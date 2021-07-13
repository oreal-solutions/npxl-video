import 'dart:math';

import 'package:npxl_video/src/byte_output_stream.dart';
import 'package:npxl_video/src/random_access_byte_input_stream.dart';

final ki64Kilobytes = 65536;

/// Copies data from [source] in 64KB chunks to [dest].
Future<void> copyInputStreamToOutputStream(
    RandomAccessByteInputStream source, ByteOutputStream dest) async {
  int numberOfBytesLeft = source.numberOfReadableBytes;
  int nextStartIndex = 0;

  while (numberOfBytesLeft > 0) {
    int numberOfBytesToRead = min(numberOfBytesLeft, ki64Kilobytes);
    numberOfBytesLeft -= numberOfBytesToRead;

    await dest.writeBytes(
        await source.readBytes(nextStartIndex, numberOfBytesToRead));

    nextStartIndex += numberOfBytesToRead;
  }
}
