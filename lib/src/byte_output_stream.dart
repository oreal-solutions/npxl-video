import 'dart:typed_data';

abstract class OutputStream {
  void close();

  Future<void> writeBytes(Uint8List bytes);
}
