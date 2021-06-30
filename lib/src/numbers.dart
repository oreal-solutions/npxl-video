import 'dart:math';
import 'dart:typed_data';

/// Parses the given integer as a 16 bit unsiged value and returns its 2 bytes.
///
/// The returned bytes are ordered in little endian.
Uint8List convertUnsignedShortToBytes(int unsignedShort) {
  return _convertUnsignedIntToBytes(unsignedShort, 2, 16);
}

/// Reads the first 2 bytes in the given list as an unsigned integer.
///
/// The bytes are assumed to be ordered in little endian.
int getUnsignedShortFromUint8List(Uint8List data) {
  return _getUnsignedIntFromUint8List(data, 2);
}

/// Parses the given integer as a 32 but unsigned value and returns its 4 bytes.
///
/// The returned bytes are ordered in little endian.
Uint8List convertUnsigned32BitIntToBytes(int unsigned32BitInt) {
  return _convertUnsignedIntToBytes(unsigned32BitInt, 4, 32);
}

/// Reads the first 4 bytes in the given list as an unsigned integer.
///
/// The bytes are assumed to be ordered in little endian.
int getUnsigned32BitIntFromUint8List(Uint8List data) {
  return _getUnsignedIntFromUint8List(data, 4);
}

Uint8List _convertUnsignedIntToBytes(
    int unsignedInt, int numberOfBytes, int numberOfBits) {
  if (unsignedInt < 0)
    throw ArgumentError("An unsigned number cannot be negative.");
  else if (unsignedInt > pow(2, numberOfBits) - 1)
    throw ArgumentError(
        "A $numberOfBits bit number cannot be more than ${numberOfBytes == 2 ? '65 535' : '4 294 967 295'}.");

  final out = Uint8List(numberOfBytes);
  if (numberOfBytes == 2)
    out.buffer.asByteData().setUint16(0, unsignedInt, Endian.little);
  else
    out.buffer.asByteData().setUint32(0, unsignedInt, Endian.little);

  return out;
}

int _getUnsignedIntFromUint8List(Uint8List data, int numberOfBytes) {
  if (data.lengthInBytes < numberOfBytes)
    throw ArgumentError(
        "The given list needs to have at least $numberOfBytes bytes.");

  if (numberOfBytes == 2)
    return data.buffer.asByteData().getUint16(0, Endian.little);

  return data.buffer.asByteData().getUint32(0, Endian.little);
}
