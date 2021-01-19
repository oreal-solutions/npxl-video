import 'dart:typed_data';

import 'package:npxl_video/src/byte_output_stream.dart';
import 'package:npxl_video/src/random_access_byte_input_stream.dart';

Future<void> copyInputStreamToOutputStream(
    RandomAccessByteInputStream source, ByteOutputStream dest) async {
  for (int readOffset = 0;
      readOffset < source.numberOfReadableBytes;
      readOffset++) {
    await dest.writeBytes(await source.readBytes(readOffset, 1));
  }
}
