import 'dart:typed_data';

import 'package:npxl_video/generated/npxl_video.pb.dart';
import 'package:npxl_video/src/data_validation.dart';
import 'package:npxl_video/src/in_memory_byte_output_stream.dart';
import 'package:npxl_video/src/in_memory_random_access_byte_input_stream.dart';
import 'package:npxl_video/src/numbers.dart';
import 'package:npxl_video/src/readers.dart';
import 'package:npxl_video/src/stream_utils.dart';
import 'package:test/test.dart';

void main() {
  group("Readers Tests", () {
    group("readMediaPage(mediaPageSubsection)", () {
      test(
          "Should throw argument error if the checksum value in the given data does not match that it computes with data_validation.dart/computeCRC16Checksum(...)",
          () {
        final checksummedPart = Uint8List.fromList([
          0xaa,
          0xbb,
          0xcc,
        ]);
        final correctChecksum = computeCRC16Checksum(checksummedPart);
        final wrongCheckSum = correctChecksum + 1;

        final mediaPageData =
            convertUnsignedShortToBytes(wrongCheckSum) + checksummedPart;

        expect(() => readMediaPage(Uint8List.fromList(mediaPageData)),
            throwsArgumentError);
      });

      test("Should return an instance with the correct header", () {
        final expectedHeader = MediaPageHeader(mediaPageNumber: 400);
        final expectedHeaderData = expectedHeader.writeToBuffer();

        final checksummedPart =
            convertUnsignedShortToBytes(expectedHeaderData.length) +
                expectedHeaderData;

        final mediaPageData = convertUnsignedShortToBytes(
                computeCRC16Checksum(Uint8List.fromList(checksummedPart))) +
            checksummedPart;

        expect(readMediaPage(Uint8List.fromList(mediaPageData)).header,
            expectedHeader);
      });
      test("Should return an instance with the correct audio data", () {
        final expectedHeaderData = MediaPageHeader().writeToBuffer();

        final audioData = Uint8List.fromList([
          0xaa,
          0xbb,
          0xcc,
        ]);
        final checksummedPart =
            convertUnsignedShortToBytes(expectedHeaderData.length) +
                expectedHeaderData +
                audioData;

        final mediaPageData = convertUnsignedShortToBytes(
                computeCRC16Checksum(Uint8List.fromList(checksummedPart))) +
            checksummedPart;

        expect(
            readMediaPage(Uint8List.fromList(mediaPageData))
                .compressedAudioData,
            audioData);
      });
    });

    group("readVideoResource(videoResourceSubSection)", () {
      test("Should return an instance with the correct header", () async {
        final expectedHeader = VideoResourceHeader(mimeType: 'abc');
        final expectedHeaderData = expectedHeader.writeToBuffer();

        final videoResourceData =
            convertUnsignedShortToBytes(expectedHeaderData.length) +
                expectedHeaderData;

        expect(
          (await readVideoResource(InMemoryRandomAccessByteInputStream(
                  Uint8List.fromList(videoResourceData))))
              .header,
          expectedHeader,
        );
      });
      test("Should return an instance with the correct dataStream", () async {
        final expectedHeaderData =
            VideoResourceHeader(mimeType: 'abc').writeToBuffer();

        final resourceData = Uint8List.fromList([
          0xaa,
          0xbb,
          0xcc,
        ]);

        final videoResourceData =
            convertUnsignedShortToBytes(expectedHeaderData.length) +
                expectedHeaderData +
                resourceData;

        final returnedResourceDataStream = (await readVideoResource(
                InMemoryRandomAccessByteInputStream(
                    Uint8List.fromList(videoResourceData))))
            .dataStream;

        final resourceDataBufferStream = InMemoryByteOutputStream();
        await copyInputStreamToOutputStream(
            returnedResourceDataStream, resourceDataBufferStream);

        expect(resourceDataBufferStream.data, resourceData);
      });
    });
  });
}
