import 'dart:typed_data';

import 'package:npxl_video/generated/npxl_video.pb.dart';
import 'package:npxl_video/src/data_validation.dart';
import 'package:npxl_video/src/in_memory_byte_output_stream.dart';
import 'package:npxl_video/src/media_page_builder.dart';
import 'package:npxl_video/src/numbers.dart';
import 'package:test/test.dart';

void main() {
  group("MediaPageBuilder Tests", () {
    group("buildToOutputStream(out)", () {
      test(
          "Should build the instance with the checksum value equal to that computed by data_validation.dart/computeCRC16Checksum for the checksummed part of the media page",
          () async {
        final mediaPageHeaderData = MediaPageHeader(
                vectorFrame: RenderingInstructions(pointer: Pointer()),
                pageDurationInMillis: 3,
                mediaPageNumber: 1)
            .writeToBuffer();
        final mediaPageHeaderLength =
            convertUnsignedShortToBytes(mediaPageHeaderData.length);
        final compressedAudioData = Uint8List.fromList([0xaa, 0xbb]);

        final checkSummedPart = InMemoryByteOutputStream();
        await checkSummedPart.writeBytes(mediaPageHeaderLength);
        await checkSummedPart.writeBytes(mediaPageHeaderData);
        await checkSummedPart.writeBytes(compressedAudioData);
        final expectedChecksumValue =
            computeCRC16Checksum(checkSummedPart.data);

        final instance = MediaPageBuilder();
        instance.setCompressedAudioData(compressedAudioData);
        instance.setMediaPageDurationInMillis(3);
        instance.setMediaPageNumber(1);
        instance.setVectorFrame(RenderingInstructions(pointer: Pointer()));

        final ret = InMemoryByteOutputStream();
        await instance.buildToOutputStream(ret);
        final returnedChecksumValue =
            getUnsignedShortFromUint8List(ret.data.sublist(0, 2));

        expect(returnedChecksumValue, expectedChecksumValue);
      });

      test("Should return the same data as build()", () async {
        final instance = MediaPageBuilder();

        final ret = InMemoryByteOutputStream();
        await instance.buildToOutputStream(ret);

        expect(ret.data, await instance.build());
      });
    });
  });
}
