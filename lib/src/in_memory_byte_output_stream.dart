import 'dart:typed_data';

import 'package:npxl_video/src/byte_output_stream.dart';

class InMemoryByteOutputStream implements ByteOutputStream {
  final List<int> _buffer = [];

  Uint8List get data => Uint8List.fromList(_buffer);

  @override
  Future<void> writeBytes(Uint8List bytes) async {
    _buffer.addAll(bytes);
  }

  @override
  void close() {}
}
