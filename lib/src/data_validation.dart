import 'dart:typed_data';
import 'package:crclib/catalog.dart';

/// Computes a CRC16/ARC checksum for the given data
int computeCRC16Checksum(Uint8List data) {
  return int.parse(Crc16Arc().convert(data.toList()).toString());
}
