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

        test(
            "Should have the mediaPageDataRanges being the last value set with setMediaPageDataRanges",
            () async {
          final instance = VideoBuilder();
          instance.setMediaPageDataRanges([DataRange(start: 0, end: 2)]);
          instance.setMediaPagesInputStream(
              InMemoryRandomAccessByteInputStream(Uint8List(2)));

          final ret = InMemoryByteOutputStream();
          await instance.buildToOutputStream(ret);

          expect(getVideoHeaderFromReturnedData(ret.data).mediaPageDataRanges,
              [DataRange(start: 0, end: 2)]);
        });
        test(
            "Should have the videoResourceDataRanges being the last value set with setVideoResourceDataRanges",
            () async {
          final instance = VideoBuilder();
          instance
              .setVideoResourceDataRanges({'abc': DataRange(start: 0, end: 2)});
          instance.setVideoResourcesInputStream(
              InMemoryRandomAccessByteInputStream(Uint8List(2)));

          final ret = InMemoryByteOutputStream();
          await instance.buildToOutputStream(ret);

          expect(
              getVideoHeaderFromReturnedData(ret.data).videoResourceDataRanges,
              {'abc': DataRange(start: 0, end: 2)});
        });
      });

      group(
          "When there is no mediaPageDataRanges set but the given mediaPagesInputStream is not empty",
          () {
        test("Should throw StateError", () {
          final instance = VideoBuilder();
          instance.setMediaPagesInputStream(
              InMemoryRandomAccessByteInputStream(Uint8List(2)));

          final ret = InMemoryByteOutputStream();
          final run = () => instance.buildToOutputStream(ret);

          expect(run, throwsStateError);
        });
      });
      group(
          "When there are mediaPageDataRanges set but the given mediaPagesInputStream is empty",
          () {
        test("Should throw StateError", () {
          final instance = VideoBuilder();
          instance.setMediaPageDataRanges([DataRange(start: 0, end: 2)]);
          instance.setMediaPagesInputStream(
              InMemoryRandomAccessByteInputStream(Uint8List(0)));

          final ret = InMemoryByteOutputStream();
          final run = () => instance.buildToOutputStream(ret);

          expect(run, throwsStateError);
        });
      });
      group(
          "When there are no videoResourceDataRanges set but the given videoResourcesInputStream is not empty",
          () {
        test("Should throw StateError", () {
          final instance = VideoBuilder();
          instance.setVideoResourcesInputStream(
              InMemoryRandomAccessByteInputStream(Uint8List(2)));

          final ret = InMemoryByteOutputStream();
          final run = () => instance.buildToOutputStream(ret);

          expect(run, throwsStateError);
        });
      });

      group(
          "When there are videoResourceDataRanges set but the given video resources input stream is empty",
          () {
        test("Should throw StateError", () {
          final instance = VideoBuilder();
          instance
              .setVideoResourceDataRanges({'abc': DataRange(start: 0, end: 2)});
          instance.setVideoResourcesInputStream(
              InMemoryRandomAccessByteInputStream(Uint8List(0)));

          final ret = InMemoryByteOutputStream();
          final run = () => instance.buildToOutputStream(ret);

          expect(run, throwsStateError);
        });
      });

      test(
          "Should build the instance with the media pages section filled with the last data passed to setMediaPagesInputStream",
          () async {
        final expectedVideoHeaderData = VideoHeader(
          audioProperties: AudioProperties(),
          videoDurationInMillis: 0,
          mediaPageDataRanges: [DataRange(start: 0, end: 3)],
          videoResourceDataRanges: {},
        ).writeToBuffer();
        final expectedVideoHeaderLength = expectedVideoHeaderData.length;

        final instance = VideoBuilder();
        final mediaPages = InMemoryRandomAccessByteInputStream(
            Uint8List.fromList([0xaa, 0xbb, 0xcc]));
        instance.setMediaPagesInputStream(mediaPages);
        instance.setMediaPageDataRanges([DataRange(start: 0, end: 3)]);

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
          videoDurationInMillis: 0,
          mediaPageDataRanges: [],
          videoResourceDataRanges: {'abc': DataRange(start: 0, end: 3)},
        ).writeToBuffer();
        final expectedVideoHeaderLength = expectedVideoHeaderData.length;

        final instance = VideoBuilder();
        final videoResources = InMemoryRandomAccessByteInputStream(
            Uint8List.fromList([0xaa, 0xbb, 0xcc]));
        instance.setVideoResourcesInputStream(videoResources);
        instance
            .setVideoResourceDataRanges({'abc': DataRange(start: 0, end: 3)});

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
