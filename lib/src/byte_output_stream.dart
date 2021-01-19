import 'dart:typed_data';

abstract class ByteOutputStream {
  /// Close the output stream.
  ///
  /// It will first flush the output stream by ensuring that all written data is indeed
  /// captured in the destination.
  void close();

  Future<void> writeBytes(Uint8List bytes);
}
