import 'dart:typed_data';

import 'package:npxl_video/src/in_memory_random_access_byte_input_stream.dart';
import 'package:test/test.dart';

void main() {
  group("InMemoryRandomAccessByteInputStream Tests", () {
    group("When the data is [0x0a, 0xbd, 0x20]", () {
      final instance = InMemoryRandomAccessByteInputStream(
          Uint8List.fromList([0x0a, 0xbd, 0x20]));

      test("Should return [0x0a] when offset is 0 and numberOfBytesToRead is 1",
          () async {
        final ret = await instance.readBytes(0, 1);
        expect(ret, Uint8List.fromList([0x0a]));
      });
      test("Should return [0xbd] when offset is 1 and numberOfBytesToRead is 1",
          () async {
        final ret = await instance.readBytes(1, 1);
        expect(ret, Uint8List.fromList([0xbd]));
      });
      test("Should return [0x20] when offset is 2 and numberOfBytesToRead is 1",
          () async {
        final ret = await instance.readBytes(2, 1);
        expect(ret, Uint8List.fromList([0x20]));
      });
      test(
          "Should return [0x0a, 0xbd, 0x20] when offset is 0 and numberOfBytesToRead is 3",
          () async {
        final ret = await instance.readBytes(0, 3);
        expect(ret, Uint8List.fromList([0x0a, 0xbd, 0x20]));
      });
      test(
          "Should return [0xbd, 0x20] when offset is 1 and numberOfBytesToRead is more than 2",
          () async {
        final ret = await instance.readBytes(1, 3);
        expect(ret, Uint8List.fromList([0xbd, 0x20]));
      });
    });
  });
}
