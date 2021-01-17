import 'dart:typed_data';

/// Parses the given integer as a 16 bit unsiged value and returns its 2 bytes.
///
/// The returned bytes are ordered in little endian.
Uint8List convertUnsignedShortToBytes(int unsignedShort) {
  if (unsignedShort < 0)
    throw ArgumentError("An unsigned number cannot be negative.");
  else if (unsignedShort > 65535)
    throw (ArgumentError("A 16 bit number cannot be more than 65 535."));

  return Uint8List(2)
    ..buffer.asByteData().setUint16(0, unsignedShort, Endian.little);
}

/// Redas the first 2 bytes in the given as an unsigned integer.
///
/// The bytes are assumed to be ordered in little endian.
int getUnsignedShortFromUint8List(Uint8List data) {
  if (data.lengthInBytes < 2)
    throw ArgumentError("The given list needs to have at least 2 bytes.");

  return data.buffer.asByteData().getUint16(0, Endian.little);
}
