import 'dart:typed_data';

import 'package:npxl_video/src/byte_output_stream.dart';
import 'package:npxl_video/src/random_access_byte_input_stream.dart';
import 'package:npxl_video/src/section_builder.dart';

class VideoResourceBuilder extends SectionBuilder {
  @override
  Uint8List build() {
    return Uint8List.fromList([]);
  }

  @override
  Future<void> buildToOutputStream(ByteOutputStream out) async {}

  void setResourceId(String resourceId) {}
  void setResourceMimeType(String mimeType) {}
  void setResourceData(Uint8List data) {}
  void setResourceDataFromInputStream(
      RandomAccessByteInputStream resourceDataInputStream) {}
}
