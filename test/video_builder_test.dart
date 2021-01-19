import 'dart:typed_data';

import 'package:npxl_video/generated/npxl_video.pb.dart';
import 'package:npxl_video/src/in_memory_byte_output_stream.dart';
import 'package:npxl_video/src/in_memory_random_access_byte_input_stream.dart';
import 'package:npxl_video/src/numbers.dart';
import 'package:npxl_video/src/revision.dart';
import 'package:npxl_video/src/video_builder.dart';
import 'package:test/test.dart';

void main() {
  group("VideoBuilder Tests", () {
    group("buildToOutputStream(out)", () {
      test(
          "Should build the instance with the major revision code equal to the value of revision.dart/majorRevision",
          () async {
        final instance = VideoBuilder();

        final ret = InMemoryByteOutputStream();
        await instance.buildToOutputStream(ret);
        final returnedMajorRevisionCode =
            getUnsignedShortFromUint8List(ret.data.sublist(0, 2));

        expect(returnedMajorRevisionCode, majorRevision);
      });
      test("Should build the instance with the correct video header length",
          () async {
        final expectedVideoHeaderData = VideoHeader(
          audioProperties: AudioProperties(frameSize: 120),
          mediaPagesSize: 0,
          videoDurationInMillis: 0,
        ).writeToBuffer();
        final expectedVideoHeaderLength = expectedVideoHeaderData.length;

        final instance = VideoBuilder();
        instance.setMediaPagesInputStream(
            InMemoryRandomAccessByteInputStream(Uint8List(0)));
        instance.setAudioProperties(AudioProperties(frameSize: 120));
        instance.setVideoDurationInMillis(0);

        final ret = InMemoryByteOutputStream();
        await instance.buildToOutputStream(ret);
        final returnedVideoHeaderLength =
            getUnsignedShortFromUint8List(ret.data.sublist(2, 4));

        expect(returnedVideoHeaderLength, expectedVideoHeaderLength);
      });
      group("Instance video header", () {
        VideoHeader getVideoHeaderFromReturnedData(Uint8List data) {
          final videoHeaderLength =
              getUnsignedShortFromUint8List(data.sublist(2, 4));

          return VideoHeader.fromBuffer(data.sublist(4, 4 + videoHeaderLength));
        }

        test(
            "Should have the audioProperties being the last value passed to setAudioProperties",
            () async {
          final instance = VideoBuilder();
          instance.setAudioProperties(AudioProperties(frameSize: 120));

          final ret = InMemoryByteOutputStream();
          await instance.buildToOutputStream(ret);

          expect(getVideoHeaderFromReturnedData(ret.data).audioProperties,
              AudioProperties(frameSize: 120));
        });
        test(
            "Should have the videoDurationInMillis being the last value passed to setVideoDurationInMillis",
            () async {
          final instance = VideoBuilder();
          instance.setVideoDurationInMillis(40);

          final ret = InMemoryByteOutputStream();
          await instance.buildToOutputStream(ret);

          expect(getVideoHeaderFromReturnedData(ret.data).videoDurationInMillis,
              40);
        });
        test("Should have the correct mediaPagesSize", () async {
          final instance = VideoBuilder();
          final mediaPages = InMemoryRandomAccessByteInputStream(
              Uint8List.fromList([0xaa, 0xbb]));
          instance.setMediaPagesInputStream(mediaPages);

          final ret = InMemoryByteOutputStream();
          await instance.buildToOutputStream(ret);

          expect(getVideoHeaderFromReturnedData(ret.data).mediaPagesSize, 2);
        });
      });

      test(
          "Should build the instance with the media pages section filled with the last data passed to setMediaPagesInputStream",
          () async {
        final expectedVideoHeaderData = VideoHeader(
          audioProperties: AudioProperties(),
          mediaPagesSize: 3,
          videoDurationInMillis: 0,
        ).writeToBuffer();
        final expectedVideoHeaderLength = expectedVideoHeaderData.length;

        final instance = VideoBuilder();
        final mediaPages = InMemoryRandomAccessByteInputStream(
            Uint8List.fromList([0xaa, 0xbb, 0xcc]));
        instance.setMediaPagesInputStream(mediaPages);

        final ret = InMemoryByteOutputStream();
        await instance.buildToOutputStream(ret);
        final mediaPagesSection = ret.data.sublist(
            4 + expectedVideoHeaderLength, 4 + expectedVideoHeaderLength + 3);

        expect(mediaPagesSection, [0xaa, 0xbb, 0xcc]);
      });
      test(
          "Should build the instance with the video resources section filled with the last data passed to setVideoResourcesInputStream",
          () async {
        final expectedVideoHeaderData = VideoHeader(
          audioProperties: AudioProperties(),
          mediaPagesSize: 0,
          videoDurationInMillis: 0,
        ).writeToBuffer();
        final expectedVideoHeaderLength = expectedVideoHeaderData.length;

        final instance = VideoBuilder();
        final videoResources = InMemoryRandomAccessByteInputStream(
            Uint8List.fromList([0xaa, 0xbb, 0xcc]));
        instance.setVideoResourcesInputStream(videoResources);

        final ret = InMemoryByteOutputStream();
        await instance.buildToOutputStream(ret);
        final videoResourcesSection = ret.data.sublist(
            4 + expectedVideoHeaderLength, 4 + expectedVideoHeaderLength + 3);

        expect(videoResourcesSection, [0xaa, 0xbb, 0xcc]);
      });

      test("Should return the same data as build()", () async {
        final instance = VideoBuilder();

        final ret = InMemoryByteOutputStream();
        await instance.buildToOutputStream(ret);

        expect(ret.data, await instance.build());
      });
    });
  });
}
