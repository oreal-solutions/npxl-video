import 'package:npxl_video/generated/npxl_video.pb.dart';
import 'package:npxl_video/src/readable_media_page.dart';
import 'package:npxl_video/src/readable_video_resource.dart';

abstract class VideoReader {
  Future<int> majorRevisionCode();
  Future<VideoHeader> videoHeader();
  Future<Duration> videoDuration();
  Future<Iterable<ReadableMediaPage>> getMediaPagesInRange(
      Duration start, Duration length);
  Future<ReadableVideoResource> getVideoResource(String resourceId);
}
