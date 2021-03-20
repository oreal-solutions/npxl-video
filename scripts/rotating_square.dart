import 'dart:io';
import 'dart:math';

import 'package:npxl_video/generated/npxl_video.pb.dart';

import './engine/engine.dart';
import './engine/shared_utils.dart';

/// Generates a 5 minute video of a rotating square
Future<void> main() async {
  final simulation = Engine(
    surfaceHeight: 720,
    surfaceWidth: 1280,
    backgroundColor: Color(value: kcWhite),
    objects: [
      // Square
      EngineObject<RotatingSquareState>(
        state: RotatingSquareState(),
        onDraw: (engine, deltaMillis, state) {
          return Path(
            color: Color(value: kcRed),
            strokeWidth: 10,
            points: state.rotateAndGetPoints(deltaMillis),
          );
        },
      )
    ],
  );

  // 60Hz render rate
  final frameTimeInMillis = 16;

  // final video = await simulation.renderToVideo(frameTimeInMillis, 60 * 60 * 5,
  final video = await simulation.renderToVideo(frameTimeInMillis, 60 * 20,
      Viewport(topLeftCorner: Point(dx: 0, dy: 0), width: 1280, height: 720));

  File('rotating_square.npxl').writeAsBytesSync(video.toList());
}

class RotatingSquareState {
  MeshTransformer meshTransformer = MeshTransformer([
    makePathPointAt(375, 110),
    makePathPointAt(500 + 375.0, 0 + 110.0),
    makePathPointAt(500 + 375.0, 500 + 110.0),
    makePathPointAt(0 + 375.0, 500 + 110.0),
  ]);

  double rotationRad = 0;

  List<PathPoint> rotateAndGetPoints(int deltaMillis) {
    final changeInAngle = pi / 60;
    rotationRad += changeInAngle;

    return meshTransformer.rotate(rotationRad, 625, 360).points;
  }
}
