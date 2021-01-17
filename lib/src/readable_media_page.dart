import 'package:npxl_video/generated/npxl_video.pb.dart';
import 'package:npxl_video/src/random_access_byte_input_stream.dart';

class ReadableMediaPage {
  final MediaPageHeader header;
  final RandomAccessByteInputStream audioStream;

  ReadableMediaPage(this.header, this.audioStream);
}
