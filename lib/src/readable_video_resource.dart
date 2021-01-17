import 'package:npxl_video/generated/npxl_video.pb.dart';
import 'package:npxl_video/src/random_access_byte_input_stream.dart';

class ReadableVideoResource {
  final VideoResourceHeader header;
  final RandomAccessByteInputStream dataStream;

  ReadableVideoResource(this.header, this.dataStream);
}
