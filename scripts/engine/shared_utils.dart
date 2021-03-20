// Copied from Flutter colors

import 'package:npxl_video/generated/npxl_video.pb.dart';

const kcRed = 0xFFFF5252;
const kcBlue = 0xFF2196F3;
const kcGreen = 0xFF4CAF50;
const kcOrange = 0xFFFF9800;
const kcPurple = 0xFF9C27B0;
const kcWhite = 0xFFFFFFFF;

PathPoint makePathPointAt(double dx, double dy) {
  return PathPoint(
    coordinates: Point(dx: dx, dy: dy),
    pressure: 1,
  );
}
