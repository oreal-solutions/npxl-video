import 'dart:typed_data';

import 'package:npxl_video/src/byte_output_stream.dart';

abstract class SectionBuilder {
  /// Serialises the object to its binary representation as per the documentation
  /// for the object in `npxl_video.proto`.
  Uint8List build();

  /// Does the same thing as build but instead of returning the binary data it
  /// writes it to the given [OutputStream].
  Future<void> buildToOutputStream(ByteOutputStream out);
}
