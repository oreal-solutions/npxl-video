import 'dart:math';
import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'package:npxl_video/generated/npxl_video.pb.dart';
import 'package:npxl_video/npxl_video.dart';

typedef Path OnDrawCallback<T>(Engine engine, int deltaMillis, T state);
typedef void OnAddToEngineCallback<T>(Engine engine, T state);

class EngineObject<T> {
  final OnDrawCallback<T> onDraw;
  final OnAddToEngineCallback<T> onAddToEngine;
  final T state;
  EngineObject({
    @required this.onDraw,
    this.onAddToEngine,
    this.state,
  });

  Path draw(Engine engine, int deltaMillis, T state) =>
      onDraw(engine, deltaMillis, state);
  void addToEngine(Engine engine, T state) => onAddToEngine(engine, state);
}

class Engine {
  final int surfaceWidth;
  final int surfaceHeight;
  final List<EngineObject> objects;
  Engine({
    @required this.surfaceWidth,
    @required this.surfaceHeight,
    @required this.objects,
    Color backgroundColor,
  }) : this.backgroundColor = backgroundColor ?? Color(value: 0);

  Color backgroundColor;

  List<Path> renderSingleFrame(int deltaMillis) {
    return objects
        .map((object) => object.draw(this, deltaMillis, object.state))
        .toList();
  }

  Future<Uint8List> renderToVideo(
      int deltaMillis, int numberOfFrames, Viewport viewport) async {
    List<MediaPageBuilder> mediaPageBuilders = [];

    for (var frameNumber = 0; frameNumber < numberOfFrames; frameNumber++) {
      mediaPageBuilders.add(MediaPageBuilder()
        ..setMediaPageDurationInMillis(deltaMillis)
        ..setMediaPageNumber(frameNumber)
        ..setVectorFrame(RenderingInstructions(
          viewport: viewport,
          backgroundColor: backgroundColor,
          paths: renderSingleFrame(deltaMillis),
        )));
    }

    final mediaPageDataRanges = <DataRange>[];
    final mediaPagesBinaryData = <int>[];

    int lastEndIndex = 0;
    for (var builder in mediaPageBuilders) {
      final binaryData = await builder.build();
      mediaPagesBinaryData.addAll(binaryData);

      mediaPageDataRanges.add(DataRange(
          start: lastEndIndex, end: lastEndIndex + binaryData.length));
      lastEndIndex = lastEndIndex + binaryData.length;
    }

    final videoBuilder = VideoBuilder();
    videoBuilder.setMediaPageDataRanges(mediaPageDataRanges);
    videoBuilder.setMediaPagesInputStream(InMemoryRandomAccessByteInputStream(
        Uint8List.fromList(mediaPagesBinaryData)));
    videoBuilder.setVideoDurationInMillis(deltaMillis * numberOfFrames);

    return videoBuilder.build();
  }
}

class MeshTransformer {
  final List<PathPoint> points;
  MeshTransformer(this.points);

  MeshTransformer map(PathPoint Function(PathPoint) func) {
    return MeshTransformer(this.points.map(func).toList());
  }

  MeshTransformer translate(double xMove, double yMove) {
    return this.map((point) => PathPoint(
          pressure: point.pressure,
          coordinates: Point(
            dx: point.coordinates.dx + xMove,
            dy: point.coordinates.dy + yMove,
          ),
        ));
  }

  MeshTransformer rotate(double angleRad,
      [double originX = 0.0, double originY = 0.0]) {
    return this.translate(-originX, -originY).map((point) {
      final x = point.coordinates.dx;
      final y = point.coordinates.dy;

      final newX = x * cos(angleRad) - y * sin(angleRad);
      final newY = y * cos(angleRad) + x * sin(angleRad);

      return PathPoint(
        pressure: point.pressure,
        coordinates: Point(dx: newX, dy: newY),
      );
    }).translate(originX, originY);
  }
}
