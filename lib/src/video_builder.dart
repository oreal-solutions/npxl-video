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
    if (_mediaPageDataRanges.isEmpty &&
        _mediaPagesInputStream.numberOfReadableBytes > 0) {
      throw StateError(
          'The media pages section has data but there are no media page data'
          ' ranges set. This means the media pages section will contain data'
          ' that will never be read. Please add the media page data ranges or'
          ' remove the media pages section by passing an empty media pages input'
          ' stream to setMediaPagesInputStream(...).');
    } else if (_mediaPagesInputStream.numberOfReadableBytes == 0 &&
        _mediaPageDataRanges.isNotEmpty) {
      throw StateError('Media page data ranges were given for for this'
          ' instance, but it does not have data for the media pages section.'
          ' This will instruct video readers to read data that does not exist.'
          ' Please remove the media pages data ranges or add data to the'
          ' media pages section.');
    }

    if (_videoResourceDataRanges.isEmpty &&
        _videoResourcesInputStream.numberOfReadableBytes > 0) {
      throw StateError(
          'The video resources section has data but there are no video resource data'
          ' ranges set. This means the video resources section will contain data'
          ' that will never be read. Please add the video resources data ranges or'
          ' remove the video resources section by passing an empty video resources input'
          ' stream to setVideoResourcesInputStream(...).');
    } else if (_videoResourcesInputStream.numberOfReadableBytes == 0 &&
        _videoResourceDataRanges.isNotEmpty) {
      throw StateError('Video resource data ranges were given for for this'
          ' instance, but it does not have data for the video resources section.'
          ' This will instruct video readers to read data that does not exist.'
          ' Please remove the video resources data ranges or add data to the'
          ' video resources section.');
    }

    await out.writeBytes(convertUnsignedShortToBytes(majorRevision));

    final videoHeaderData = VideoHeader(
      audioProperties: _audioProperties,
      videoDurationInMillis: _videoDurationInMillis,
      mediaPageDataRanges: _mediaPageDataRanges,
      videoResourceDataRanges: _videoResourceDataRanges,
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

  void setMediaPageDataRanges(List<DataRange> dataRanges) {
    _mediaPageDataRanges = dataRanges;
  }

  void setVideoResourceDataRanges(Map<String, DataRange> dataRanges) {
    _videoResourceDataRanges = dataRanges;
  }

  RandomAccessByteInputStream _mediaPagesInputStream =
      InMemoryRandomAccessByteInputStream(Uint8List(0));
  RandomAccessByteInputStream _videoResourcesInputStream =
      InMemoryRandomAccessByteInputStream(Uint8List(0));
  AudioProperties _audioProperties = AudioProperties();
  int _videoDurationInMillis = 0;
  List<DataRange> _mediaPageDataRanges = [];
  Map<String, DataRange> _videoResourceDataRanges = {};
}
