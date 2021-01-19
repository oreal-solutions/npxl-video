import 'dart:typed_data';

import 'package:npxl_video/generated/npxl_video.pb.dart';
import 'package:npxl_video/src/byte_output_stream.dart';
import 'package:npxl_video/src/in_memory_byte_output_stream.dart';
import 'package:npxl_video/src/in_memory_random_access_byte_input_stream.dart';
import 'package:npxl_video/src/numbers.dart';
import 'package:npxl_video/src/random_access_byte_input_stream.dart';
import 'package:npxl_video/src/revision.dart';
import 'package:npxl_video/src/section_builder.dart';
import 'package:npxl_video/src/stream_utils.dart';

class VideoBuilder implements SectionBuilder {
  @override
  Future<Uint8List> build() async {
    final ret = InMemoryByteOutputStream();
    await buildToOutputStream(ret);
    return ret.data;
  }

  @override
  Future<void> buildToOutputStream(ByteOutputStream out) async {
    await out.writeBytes(convertUnsignedShortToBytes(majorRevision));

    final videoHeaderData = VideoHeader(
      audioProperties: _audioProperties,
      mediaPagesSize: _mediaPagesInputStream.numberOfReadableBytes,
      videoDurationInMillis: _videoDurationInMillis,
    ).writeToBuffer();

    await out.writeBytes(convertUnsignedShortToBytes(videoHeaderData.length));
    await out.writeBytes(videoHeaderData);
    await copyInputStreamToOutputStream(_mediaPagesInputStream, out);
    await copyInputStreamToOutputStream(_videoResourcesInputStream, out);
  }

  void setMediaPagesInputStream(
      RandomAccessByteInputStream mediaPagesInputStream) {
    _mediaPagesInputStream = mediaPagesInputStream;
  }

  void setVideoResourcesInputStream(
      RandomAccessByteInputStream videoResourcesInputStream) {
    _videoResourcesInputStream = videoResourcesInputStream;
  }

  void setAudioProperties(AudioProperties audioProperties) {
    _audioProperties = audioProperties;
  }

  void setVideoDurationInMillis(int millis) {
    _videoDurationInMillis = millis;
  }

  RandomAccessByteInputStream _mediaPagesInputStream =
      InMemoryRandomAccessByteInputStream(Uint8List(0));
  RandomAccessByteInputStream _videoResourcesInputStream =
      InMemoryRandomAccessByteInputStream(Uint8List(0));
  AudioProperties _audioProperties = AudioProperties();
  int _videoDurationInMillis = 0;
}
