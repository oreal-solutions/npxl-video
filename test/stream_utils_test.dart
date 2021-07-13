import 'dart:math';
import 'dart:typed_data';

import 'package:npxl_video/npxl_video.dart';
import 'package:test/test.dart';

void main() {
  final random = Random();
  final Uint8List data20KB =
      Uint8List.fromList(List.generate(1024 * 20, (_) => random.nextInt(256)));
  final Uint8List data84KB =
      Uint8List.fromList(List.generate(1024 * 84, (_) => random.nextInt(256)));

  group("stream_utils Tests", () {
    group("copyInputStreamToOutputStream(source, dest)", () {
      Future<void> testWithData(Uint8List data) async {
        final source = InMemoryRandomAccessByteInputStream(data);
        final dest = InMemoryByteOutputStream();

        await copyInputStreamToOutputStream(source, dest);

        expect(dest.data, data);
      }

      test("Should be able to copy 20KB data", () {
        return testWithData(data20KB);
      });
      test("Should be able to copy 84KB data", () {
        return testWithData(data84KB);
      });
    });
  });
}
