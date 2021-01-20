import 'dart:typed_data';

import 'package:npxl_video/generated/npxl_video.pb.dart';
import 'package:npxl_video/src/data_validation.dart';
import 'package:npxl_video/src/numbers.dart';
import 'package:npxl_video/src/random_access_byte_input_stream.dart';

class ReadableMediaPage {
  final MediaPageHeader header;
  final Uint8List compressedAudioData;

  ReadableMediaPage(this.header, this.compressedAudioData);
}

class ReadableVideoResource {
  final VideoResourceHeader header;
  final RandomAccessByteInputStream dataStream;

  ReadableVideoResource(this.header, this.dataStream);
}

/// Reads the given media page binary data to a [ReadableMediaPage].
///
/// Throw [ArgumentError] if the checksum value in the given data does
/// not match that computed by [computeCRC16Checksum].
///
/// [mediaPageSubSection] should at least have 5 bytes.
ReadableMediaPage readMediaPage(Uint8List mediaPageSubSection) {
  final checksum = getUnsignedShortFromUint8List(mediaPageSubSection);
  if (checksum != computeCRC16Checksum(mediaPageSubSection.sublist(2))) {
    throw ArgumentError(
        'The checksum values do not match. The Media Page must be corrupted.');
  }

  final headerSize =
      getUnsignedShortFromUint8List(mediaPageSubSection.sublist(2, 4));
  final headerBinaryData = mediaPageSubSection.sublist(4, 4 + headerSize);

  return ReadableMediaPage(MediaPageHeader.fromBuffer(headerBinaryData),
      mediaPageSubSection.sublist(4 + headerSize));
}

/// Reads the given video resource binary data to a [ReadableVideoResource].
///
/// [videoResourceSubSection] should have at least three bytes.
Future<ReadableVideoResource> readVideoResource(
    RandomAccessByteInputStream videoResourceSubSection) async {
  final headerSize = getUnsignedShortFromUint8List(
      await videoResourceSubSection.readBytes(0, 2));

  final headerBinaryData =
      await videoResourceSubSection.readBytes(2, headerSize);

  return ReadableVideoResource(
    VideoResourceHeader.fromBuffer(headerBinaryData),
    _SkippingRandomAccessByteInputStream(
        2 + headerSize, videoResourceSubSection),
  );
}

class _SkippingRandomAccessByteInputStream
    implements RandomAccessByteInputStream {
  final int skip;
  final RandomAccessByteInputStream source;
  _SkippingRandomAccessByteInputStream(this.skip, this.source);

  @override
  int get numberOfReadableBytes => source.numberOfReadableBytes - skip;

  @override
  Future<Uint8List> readBytes(int offset, int numberOfBytesToRead) {
    return source.readBytes(skip + offset, numberOfBytesToRead);
  }

  @override
  void close() => source.close();
}
