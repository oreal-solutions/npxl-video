import 'dart:math';
import 'dart:typed_data';

import 'package:npxl_video/src/random_access_byte_input_stream.dart';

class InMemoryRandomAccessByteInputStream
    implements RandomAccessByteInputStream {
  final Uint8List data;
  InMemoryRandomAccessByteInputStream(this.data);

  @override
  // TODO: implement numberOfReadableBytes
  int get numberOfReadableBytes => data.length;

  @override
  Future<Uint8List> readBytes(int offset, int numberOfBytesToRead) async {
    int endIndex = min(data.length, offset + numberOfBytesToRead);
    return data.sublist(
      offset,
      endIndex,
    );
  }

  @override
  void close() {}
}
