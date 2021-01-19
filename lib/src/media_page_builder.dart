import 'dart:typed_data';

import 'package:npxl_video/generated/npxl_video.pb.dart';
import 'package:npxl_video/src/byte_output_stream.dart';
import 'package:npxl_video/src/data_validation.dart';
import 'package:npxl_video/src/in_memory_byte_output_stream.dart';
import 'package:npxl_video/src/in_memory_random_access_byte_input_stream.dart';
import 'package:npxl_video/src/numbers.dart';
import 'package:npxl_video/src/section_builder.dart';
import 'package:npxl_video/src/stream_utils.dart';

class MediaPageBuilder implements SectionBuilder {
  @override
  Future<Uint8List> build() async {
    final ret = InMemoryByteOutputStream();
    await buildToOutputStream(ret);
    return ret.data;
  }

  @override
  Future<void> buildToOutputStream(ByteOutputStream out) async {
    final mediaPageHeaderData = MediaPageHeader(
      mediaPageNumber: _mediaPageNumber,
      pageDurationInMillis: _mediaPageDurationInMillis,
      vectorFrame: _vectorFrame,
      audioDataSectionSize: _compressedAudioData.length,
    ).writeToBuffer();

    final checksummedPart = InMemoryByteOutputStream();
    await checksummedPart
        .writeBytes(convertUnsignedShortToBytes(mediaPageHeaderData.length));
    await checksummedPart.writeBytes(mediaPageHeaderData);
    await checksummedPart.writeBytes(_compressedAudioData);
    final checksummedPartData = checksummedPart.data;

    final checksumValue = computeCRC16Checksum(checksummedPartData);

    await out.writeBytes(convertUnsignedShortToBytes(checksumValue));
    await copyInputStreamToOutputStream(
        InMemoryRandomAccessByteInputStream(checksummedPartData), out);
  }

  void setMediaPageNumber(int mediaPageNumber) {
    _mediaPageNumber = mediaPageNumber;
  }

  void setMediaPageDurationInMillis(int millis) {
    _mediaPageDurationInMillis = millis;
  }

  void setVectorFrame(RenderingInstructions vectorFrame) {
    _vectorFrame = vectorFrame;
  }

  void setCompressedAudioData(Uint8List compressedAudioData) {
    _compressedAudioData = compressedAudioData;
  }

  int _mediaPageNumber = 0;
  int _mediaPageDurationInMillis = 0;
  RenderingInstructions _vectorFrame = RenderingInstructions();
  Uint8List _compressedAudioData = Uint8List(0);
}
