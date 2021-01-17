import 'dart:typed_data';

import 'package:npxl_video/src/numbers.dart';
import 'package:test/test.dart';

void main() {
  group("convertUnsignedShortToBytes(int)", () {
    test("Should throw ArgumentError when given a value less than 0", () {
      final run = () => convertUnsignedShortToBytes(-1);

      expect(
          run,
          throwsA(predicate((e) =>
              e is ArgumentError &&
              e.message == 'An unsigned number cannot be negative.')));
    });

    test("Should throw ArgumentError when given a value more than 65 535", () {
      final run = () => convertUnsignedShortToBytes(65536);

      expect(
          run,
          throwsA(predicate((e) =>
              e is ArgumentError &&
              e.message == 'A 16 bit number cannot be more than 65 535.')));
    });

    test("Should return [0x00, 0x00] when passed 0", () {
      final ret = convertUnsignedShortToBytes(0);
      expect(ret, Uint8List.fromList([0x00, 0x00]));
    });

    test("Should return [0x00, 0x80] when passed 32 768", () {
      final ret = convertUnsignedShortToBytes(32768);
      expect(ret, Uint8List.fromList([0x00, 0x80]));
    });

    test("Should return [0xff, 0xbf] when passed 49 151", () {
      final ret = convertUnsignedShortToBytes(49151);
      expect(ret, Uint8List.fromList([0xff, 0xbf]));
    });

    test("Should return [0xff, 0xff] when passed 65 535", () {
      final ret = convertUnsignedShortToBytes(65535);
      expect(ret, Uint8List.fromList([0xff, 0xff]));
    });
  });

  group("getUnsignedShortFromUnit8List(Unit8List)", () {
    test("Should throw ArgumentError if the given list has less than 2 bytes",
        () {
      final run =
          () => getUnsignedShortFromUint8List(Uint8List.fromList([0x00]));

      expect(
          run,
          throwsA(predicate((e) =>
              e is ArgumentError &&
              e.message == 'The given list needs to have at least 2 bytes.')));
    });
    test("Should return 0 when passed [0x00, 0x00]", () {
      final ret =
          getUnsignedShortFromUint8List(Uint8List.fromList([0x00, 0x00]));
      expect(ret, 0);
    });
    test("Should return 32 768 [0x00, 0x80]", () {
      final ret =
          getUnsignedShortFromUint8List(Uint8List.fromList([0x00, 0x80]));
      expect(ret, 32768);
    });
    test("Should return 49 151 when passed [0xff, 0xbf]", () {
      final ret =
          getUnsignedShortFromUint8List(Uint8List.fromList([0xff, 0xbf]));
      expect(ret, 49151);
    });
    test("Should return 65 535 when passed [0xff, 0xff]", () {
      final ret =
          getUnsignedShortFromUint8List(Uint8List.fromList([0xff, 0xff]));
      expect(ret, 65535);
    });
  });
}
