import 'dart:io';
import 'dart:typed_data';

import 'package:npxl_video/npxl_video.dart' as npxl;
import 'package:meta/meta.dart';
import './shared_utils.dart';

Future<void> main() {
  return makeTestVideo();
}

Future<void> makeTestVideo() async {
  // Generates a simple 4 seconds test video with 4 media pages where
  // each media page is 1 seconds long. Each media page has a different
  // color.
  //
  // In each media page we draw a square path. The first media page has
  // the square at its top left corner. The second media page has the
  // square at its top right corner, and so on.
  final oneSecondInMillis = 1000;
  final viewport = npxl.Viewport(
    height: 20,
    width: 20,
    topLeftCorner: npxl.Point(dx: 0, dy: 0),
  );

  npxl.PathPoint makePathPointAt(double dx, double dy) {
    return npxl.PathPoint(
      coordinates: npxl.Point(dx: dx, dy: dy),
      pressure: 1,
    );
  }

  Iterable<npxl.PathPoint> squarePathAtTopLeftCorner(
      double cornerX, double cornerY) {
    return [
      makePathPointAt(0 + cornerX, 0 + cornerY),
      makePathPointAt(10 + cornerX, 0 + cornerY),
      makePathPointAt(10 + cornerX, 10 + cornerY),
      makePathPointAt(0 + cornerX, 10 + cornerY),
    ];
  }

  npxl.MediaPageBuilder makeMediaPageBuilder(
      {@required int backgroundColor,
      @required Iterable<npxl.PathPoint> points,
      @required int mediaPageNumber}) {
    return npxl.MediaPageBuilder()
      ..setMediaPageDurationInMillis(oneSecondInMillis)
      ..setMediaPageNumber(mediaPageNumber)
      ..setVectorFrame(npxl.RenderingInstructions(
        viewport: viewport,
        backgroundColor: npxl.Color(value: backgroundColor),
        paths: [
          npxl.Path(
            color: npxl.Color(value: kcRed),
            strokeWidth: 2,
            points: points,
          )
        ],
      ));
  }

  final mediaPageBuilders = [
    makeMediaPageBuilder(
        backgroundColor: kcBlue,
        points: squarePathAtTopLeftCorner(0, 0),
        mediaPageNumber: 1),
    makeMediaPageBuilder(
        backgroundColor: kcGreen,
        points: squarePathAtTopLeftCorner(10, 0),
        mediaPageNumber: 2),
    makeMediaPageBuilder(
        backgroundColor: kcOrange,
        points: squarePathAtTopLeftCorner(10, 10),
        mediaPageNumber: 3),
    makeMediaPageBuilder(
        backgroundColor: kcPurple,
        points: squarePathAtTopLeftCorner(0, 10),
        mediaPageNumber: 4),
  ];

  final mediaPageDataRanges = <npxl.DataRange>[];
  final mediaPagesBinaryData = <int>[];

  int lastEndIndex = 0;
  for (var builder in mediaPageBuilders) {
    final binaryData = await builder.build();
    mediaPagesBinaryData.addAll(binaryData);

    mediaPageDataRanges.add(npxl.DataRange(
        start: lastEndIndex, end: lastEndIndex + binaryData.length));
    lastEndIndex = lastEndIndex + binaryData.length;
  }

  final videoBuilder = npxl.VideoBuilder();
  videoBuilder.setMediaPageDataRanges(mediaPageDataRanges);
  videoBuilder.setMediaPagesInputStream(
      npxl.InMemoryRandomAccessByteInputStream(
          Uint8List.fromList(mediaPagesBinaryData)));
  videoBuilder.setVideoDurationInMillis(4 * oneSecondInMillis);

  // We can write test video to file if we want.
  final testVideo = await videoBuilder.build();
  print("Test video size in bytes = ${testVideo.lengthInBytes}");

  File('simple_moving_square_out.npxl').writeAsBytesSync(testVideo.toList());
}
