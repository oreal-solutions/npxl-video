import 'dart:typed_data';

import 'package:npxl_video/generated/npxl_video.pb.dart';
import 'package:npxl_video/src/in_memory_byte_output_stream.dart';
import 'package:npxl_video/src/in_memory_random_access_byte_input_stream.dart';
import 'package:npxl_video/src/numbers.dart';
import 'package:npxl_video/src/video_resource_builder.dart';
import 'package:test/test.dart';

void main() {
  group("VideoResourceBuilder Tests", () {
    group("buildToOutputStream(out)", () {
      test(
          "Should build the instance with the correct video resource header length",
          () async {
        final instance = VideoResourceBuilder();

        final ret = InMemoryByteOutputStream();
        await instance.buildToOutputStream(ret);
        final resourceHeaderLength = ret.data.sublist(0, 2);

        final expectedVideoResourceHeader = VideoResourceHeader(mimeType: '');

        expect(getUnsignedShortFromUint8List(resourceHeaderLength),
            expectedVideoResourceHeader.writeToBuffer().length);
      });

      // The above test should pass for this method to work properly.
      VideoResourceHeader getVideoResourceHeaderFromSectionData(
          Uint8List sectionData) {
        final resourceHeaderLength =
            getUnsignedShortFromUint8List(sectionData.sublist(0, 2));
        return VideoResourceHeader.fromBuffer(
            sectionData.sublist(2, 2 + resourceHeaderLength));
      }

      test(
          "Should build the instance with the resource mimeType being the last value passed to setResourceMimeType",
          () async {
        final instance = VideoResourceBuilder();
        instance.setResourceMimeType("abc");

        final ret = InMemoryByteOutputStream();
        await instance.buildToOutputStream(ret);

        expect(getVideoResourceHeaderFromSectionData(ret.data).mimeType, 'abc');
      });

      test(
          "Should build the instance with the resource data being the last data passed to setResourceDataFromInputStream",
          () async {
        final instance = VideoResourceBuilder();
        final resourceDataStream = InMemoryRandomAccessByteInputStream(
            Uint8List.fromList([0xaa, 0xbb]));
        instance.setResourceDataFromInputStream(resourceDataStream);

        final ret = InMemoryByteOutputStream();
        await instance.buildToOutputStream(ret);

        expect(ret.data.sublist(ret.data.length - 2), [0xaa, 0xbb]);
      });

      test("Should return the same data as build()", () async {
        final instance = VideoResourceBuilder();

        final ret = InMemoryByteOutputStream();
        await instance.buildToOutputStream(ret);

        expect(ret.data, await instance.build());
      });
    });
  });
}
