import 'dart:typed_data';

abstract class ByteOutputStream {
  void close();

  Future<void> writeBytes(Uint8List bytes);
}
