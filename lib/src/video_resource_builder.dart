import 'dart:typed_data';

import 'package:npxl_video/generated/npxl_video.pb.dart';
import 'package:npxl_video/src/byte_output_stream.dart';
import 'package:npxl_video/src/in_memory_byte_output_stream.dart';
import 'package:npxl_video/src/in_memory_random_access_byte_input_stream.dart';
import 'package:npxl_video/src/numbers.dart';
import 'package:npxl_video/src/random_access_byte_input_stream.dart';
import 'package:npxl_video/src/section_builder.dart';
import 'package:npxl_video/src/stream_utils.dart';

class VideoResourceBuilder extends SectionBuilder {
  @override
  Future<Uint8List> build() async {
    final ret = InMemoryByteOutputStream();
    await buildToOutputStream(ret);
    return ret.data;
  }

  @override
  Future<void> buildToOutputStream(ByteOutputStream out) async {
    final resourceHeaderData = VideoResourceHeader(
      resourceId: _resourceId,
      mimeType: _resourceMimeType,
      dataSectionSize: _resourceData.numberOfReadableBytes,
    ).writeToBuffer();

    await out
        .writeBytes(convertUnsignedShortToBytes(resourceHeaderData.length));
    await out.writeBytes(resourceHeaderData);
    await copyInputStreamToOutputStream(_resourceData, out);
  }

  void setResourceId(String resourceId) {
    _resourceId = resourceId;
  }

  void setResourceMimeType(String mimeType) {
    _resourceMimeType = mimeType;
  }

  void setResourceData(Uint8List data) {
    setResourceDataFromInputStream(InMemoryRandomAccessByteInputStream(data));
  }

  void setResourceDataFromInputStream(
      RandomAccessByteInputStream resourceDataInputStream) {
    _resourceData = resourceDataInputStream;
  }

  String _resourceId = '';
  String _resourceMimeType = '';
  RandomAccessByteInputStream _resourceData =
      InMemoryRandomAccessByteInputStream(Uint8List(0));
}
