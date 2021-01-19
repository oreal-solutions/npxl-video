import 'dart:typed_data';

abstract class RandomAccessByteInputStream {
  int get numberOfReadableBytes;

  void close();

  /// Reads data from the input stream.
  ///
  /// [offset] is the number of bytes to skip before starting the read.
  ///
  /// An implementation can return less than [numberOfBytesToRead] bytes,
  /// but should never return more than [numberOfBytesToRead] bytes.
  Future<Uint8List> readBytes(int offset, int numberOfBytesToRead);
}
