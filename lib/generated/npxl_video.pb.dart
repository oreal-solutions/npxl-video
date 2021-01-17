///
//  Generated code. Do not modify.
//  source: npxl_video.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'npxl_video.pbenum.dart';

export 'npxl_video.pbenum.dart';

class VideoHeader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VideoHeader', createEmptyInstance: create)
    ..aOM<AudioProperties>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'audioProperties', subBuilder: AudioProperties.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startOfVideoResourcesSection', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'videoDurationInMillis', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  VideoHeader._() : super();
  factory VideoHeader({
    AudioProperties audioProperties,
    $core.int startOfVideoResourcesSection,
    $core.int videoDurationInMillis,
  }) {
    final _result = create();
    if (audioProperties != null) {
      _result.audioProperties = audioProperties;
    }
    if (startOfVideoResourcesSection != null) {
      _result.startOfVideoResourcesSection = startOfVideoResourcesSection;
    }
    if (videoDurationInMillis != null) {
      _result.videoDurationInMillis = videoDurationInMillis;
    }
    return _result;
  }
  factory VideoHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VideoHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VideoHeader clone() => VideoHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VideoHeader copyWith(void Function(VideoHeader) updates) => super.copyWith((message) => updates(message as VideoHeader)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VideoHeader create() => VideoHeader._();
  VideoHeader createEmptyInstance() => create();
  static $pb.PbList<VideoHeader> createRepeated() => $pb.PbList<VideoHeader>();
  @$core.pragma('dart2js:noInline')
  static VideoHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VideoHeader>(create);
  static VideoHeader _defaultInstance;

  @$pb.TagNumber(1)
  AudioProperties get audioProperties => $_getN(0);
  @$pb.TagNumber(1)
  set audioProperties(AudioProperties v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAudioProperties() => $_has(0);
  @$pb.TagNumber(1)
  void clearAudioProperties() => clearField(1);
  @$pb.TagNumber(1)
  AudioProperties ensureAudioProperties() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get startOfVideoResourcesSection => $_getIZ(1);
  @$pb.TagNumber(2)
  set startOfVideoResourcesSection($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartOfVideoResourcesSection() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartOfVideoResourcesSection() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get videoDurationInMillis => $_getIZ(2);
  @$pb.TagNumber(3)
  set videoDurationInMillis($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVideoDurationInMillis() => $_has(2);
  @$pb.TagNumber(3)
  void clearVideoDurationInMillis() => clearField(3);
}

class MediaPageHeader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MediaPageHeader', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mediaPageNumber', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageDurationInMillis', $pb.PbFieldType.OU3)
    ..aOM<RenderingInstructions>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vectorFrame', protoName: 'vectorFrame', subBuilder: RenderingInstructions.create)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'audioDataSectionSize', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  MediaPageHeader._() : super();
  factory MediaPageHeader({
    $core.int mediaPageNumber,
    $core.int pageDurationInMillis,
    RenderingInstructions vectorFrame,
    $core.int audioDataSectionSize,
  }) {
    final _result = create();
    if (mediaPageNumber != null) {
      _result.mediaPageNumber = mediaPageNumber;
    }
    if (pageDurationInMillis != null) {
      _result.pageDurationInMillis = pageDurationInMillis;
    }
    if (vectorFrame != null) {
      _result.vectorFrame = vectorFrame;
    }
    if (audioDataSectionSize != null) {
      _result.audioDataSectionSize = audioDataSectionSize;
    }
    return _result;
  }
  factory MediaPageHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MediaPageHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MediaPageHeader clone() => MediaPageHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MediaPageHeader copyWith(void Function(MediaPageHeader) updates) => super.copyWith((message) => updates(message as MediaPageHeader)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MediaPageHeader create() => MediaPageHeader._();
  MediaPageHeader createEmptyInstance() => create();
  static $pb.PbList<MediaPageHeader> createRepeated() => $pb.PbList<MediaPageHeader>();
  @$core.pragma('dart2js:noInline')
  static MediaPageHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MediaPageHeader>(create);
  static MediaPageHeader _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get mediaPageNumber => $_getIZ(0);
  @$pb.TagNumber(1)
  set mediaPageNumber($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMediaPageNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearMediaPageNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageDurationInMillis => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageDurationInMillis($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageDurationInMillis() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageDurationInMillis() => clearField(2);

  @$pb.TagNumber(3)
  RenderingInstructions get vectorFrame => $_getN(2);
  @$pb.TagNumber(3)
  set vectorFrame(RenderingInstructions v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasVectorFrame() => $_has(2);
  @$pb.TagNumber(3)
  void clearVectorFrame() => clearField(3);
  @$pb.TagNumber(3)
  RenderingInstructions ensureVectorFrame() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get audioDataSectionSize => $_getIZ(3);
  @$pb.TagNumber(4)
  set audioDataSectionSize($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAudioDataSectionSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearAudioDataSectionSize() => clearField(4);
}

class VideoResourceHeader extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VideoResourceHeader', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resourceId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mimeType')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataSectionSize', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  VideoResourceHeader._() : super();
  factory VideoResourceHeader({
    $core.String resourceId,
    $core.String mimeType,
    $core.int dataSectionSize,
  }) {
    final _result = create();
    if (resourceId != null) {
      _result.resourceId = resourceId;
    }
    if (mimeType != null) {
      _result.mimeType = mimeType;
    }
    if (dataSectionSize != null) {
      _result.dataSectionSize = dataSectionSize;
    }
    return _result;
  }
  factory VideoResourceHeader.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VideoResourceHeader.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VideoResourceHeader clone() => VideoResourceHeader()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VideoResourceHeader copyWith(void Function(VideoResourceHeader) updates) => super.copyWith((message) => updates(message as VideoResourceHeader)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VideoResourceHeader create() => VideoResourceHeader._();
  VideoResourceHeader createEmptyInstance() => create();
  static $pb.PbList<VideoResourceHeader> createRepeated() => $pb.PbList<VideoResourceHeader>();
  @$core.pragma('dart2js:noInline')
  static VideoResourceHeader getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VideoResourceHeader>(create);
  static VideoResourceHeader _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resourceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set resourceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResourceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearResourceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get mimeType => $_getSZ(1);
  @$pb.TagNumber(2)
  set mimeType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMimeType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMimeType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get dataSectionSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set dataSectionSize($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDataSectionSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataSectionSize() => clearField(3);
}

class AudioProperties extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AudioProperties', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'samplingRate', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numberOfChannels', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'frameSize', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  AudioProperties._() : super();
  factory AudioProperties({
    $core.int samplingRate,
    $core.int numberOfChannels,
    $core.int frameSize,
  }) {
    final _result = create();
    if (samplingRate != null) {
      _result.samplingRate = samplingRate;
    }
    if (numberOfChannels != null) {
      _result.numberOfChannels = numberOfChannels;
    }
    if (frameSize != null) {
      _result.frameSize = frameSize;
    }
    return _result;
  }
  factory AudioProperties.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AudioProperties.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AudioProperties clone() => AudioProperties()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AudioProperties copyWith(void Function(AudioProperties) updates) => super.copyWith((message) => updates(message as AudioProperties)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AudioProperties create() => AudioProperties._();
  AudioProperties createEmptyInstance() => create();
  static $pb.PbList<AudioProperties> createRepeated() => $pb.PbList<AudioProperties>();
  @$core.pragma('dart2js:noInline')
  static AudioProperties getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AudioProperties>(create);
  static AudioProperties _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get samplingRate => $_getIZ(0);
  @$pb.TagNumber(1)
  set samplingRate($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSamplingRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearSamplingRate() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get numberOfChannels => $_getIZ(1);
  @$pb.TagNumber(2)
  set numberOfChannels($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumberOfChannels() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumberOfChannels() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get frameSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set frameSize($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFrameSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrameSize() => clearField(3);
}

class Color extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Color', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Color._() : super();
  factory Color({
    $core.int value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory Color.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Color.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Color clone() => Color()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Color copyWith(void Function(Color) updates) => super.copyWith((message) => updates(message as Color)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Color create() => Color._();
  Color createEmptyInstance() => create();
  static $pb.PbList<Color> createRepeated() => $pb.PbList<Color>();
  @$core.pragma('dart2js:noInline')
  static Color getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Color>(create);
  static Color _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class Point extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Point', createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dx', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dy', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  Point._() : super();
  factory Point({
    $core.double dx,
    $core.double dy,
  }) {
    final _result = create();
    if (dx != null) {
      _result.dx = dx;
    }
    if (dy != null) {
      _result.dy = dy;
    }
    return _result;
  }
  factory Point.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Point.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Point clone() => Point()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Point copyWith(void Function(Point) updates) => super.copyWith((message) => updates(message as Point)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Point create() => Point._();
  Point createEmptyInstance() => create();
  static $pb.PbList<Point> createRepeated() => $pb.PbList<Point>();
  @$core.pragma('dart2js:noInline')
  static Point getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Point>(create);
  static Point _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get dx => $_getN(0);
  @$pb.TagNumber(1)
  set dx($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDx() => $_has(0);
  @$pb.TagNumber(1)
  void clearDx() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get dy => $_getN(1);
  @$pb.TagNumber(2)
  set dy($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDy() => $_has(1);
  @$pb.TagNumber(2)
  void clearDy() => clearField(2);
}

class PathPoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PathPoint', createEmptyInstance: create)
    ..aOM<Point>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coordinates', subBuilder: Point.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pressure', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  PathPoint._() : super();
  factory PathPoint({
    Point coordinates,
    $core.double pressure,
  }) {
    final _result = create();
    if (coordinates != null) {
      _result.coordinates = coordinates;
    }
    if (pressure != null) {
      _result.pressure = pressure;
    }
    return _result;
  }
  factory PathPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PathPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PathPoint clone() => PathPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PathPoint copyWith(void Function(PathPoint) updates) => super.copyWith((message) => updates(message as PathPoint)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PathPoint create() => PathPoint._();
  PathPoint createEmptyInstance() => create();
  static $pb.PbList<PathPoint> createRepeated() => $pb.PbList<PathPoint>();
  @$core.pragma('dart2js:noInline')
  static PathPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PathPoint>(create);
  static PathPoint _defaultInstance;

  @$pb.TagNumber(1)
  Point get coordinates => $_getN(0);
  @$pb.TagNumber(1)
  set coordinates(Point v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoordinates() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoordinates() => clearField(1);
  @$pb.TagNumber(1)
  Point ensureCoordinates() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get pressure => $_getN(1);
  @$pb.TagNumber(2)
  set pressure($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPressure() => $_has(1);
  @$pb.TagNumber(2)
  void clearPressure() => clearField(2);
}

class Path extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Path', createEmptyInstance: create)
    ..aOM<Color>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color', subBuilder: Color.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'strokeWidth', $pb.PbFieldType.OD, protoName: 'strokeWidth')
    ..pc<PathPoint>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'points', $pb.PbFieldType.PM, subBuilder: PathPoint.create)
    ..hasRequiredFields = false
  ;

  Path._() : super();
  factory Path({
    Color color,
    $core.double strokeWidth,
    $core.Iterable<PathPoint> points,
  }) {
    final _result = create();
    if (color != null) {
      _result.color = color;
    }
    if (strokeWidth != null) {
      _result.strokeWidth = strokeWidth;
    }
    if (points != null) {
      _result.points.addAll(points);
    }
    return _result;
  }
  factory Path.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Path.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Path clone() => Path()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Path copyWith(void Function(Path) updates) => super.copyWith((message) => updates(message as Path)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Path create() => Path._();
  Path createEmptyInstance() => create();
  static $pb.PbList<Path> createRepeated() => $pb.PbList<Path>();
  @$core.pragma('dart2js:noInline')
  static Path getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Path>(create);
  static Path _defaultInstance;

  @$pb.TagNumber(1)
  Color get color => $_getN(0);
  @$pb.TagNumber(1)
  set color(Color v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => clearField(1);
  @$pb.TagNumber(1)
  Color ensureColor() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get strokeWidth => $_getN(1);
  @$pb.TagNumber(2)
  set strokeWidth($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStrokeWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearStrokeWidth() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<PathPoint> get points => $_getList(2);
}

class MaterialRenderable extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MaterialRenderable', createEmptyInstance: create)
    ..aOM<Point>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topLeftCorner', subBuilder: Point.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.OD)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.OD)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resourceId')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageNumber', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  MaterialRenderable._() : super();
  factory MaterialRenderable({
    Point topLeftCorner,
    $core.double width,
    $core.double height,
    $core.String resourceId,
    $core.int pageNumber,
  }) {
    final _result = create();
    if (topLeftCorner != null) {
      _result.topLeftCorner = topLeftCorner;
    }
    if (width != null) {
      _result.width = width;
    }
    if (height != null) {
      _result.height = height;
    }
    if (resourceId != null) {
      _result.resourceId = resourceId;
    }
    if (pageNumber != null) {
      _result.pageNumber = pageNumber;
    }
    return _result;
  }
  factory MaterialRenderable.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MaterialRenderable.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MaterialRenderable clone() => MaterialRenderable()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MaterialRenderable copyWith(void Function(MaterialRenderable) updates) => super.copyWith((message) => updates(message as MaterialRenderable)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MaterialRenderable create() => MaterialRenderable._();
  MaterialRenderable createEmptyInstance() => create();
  static $pb.PbList<MaterialRenderable> createRepeated() => $pb.PbList<MaterialRenderable>();
  @$core.pragma('dart2js:noInline')
  static MaterialRenderable getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MaterialRenderable>(create);
  static MaterialRenderable _defaultInstance;

  @$pb.TagNumber(1)
  Point get topLeftCorner => $_getN(0);
  @$pb.TagNumber(1)
  set topLeftCorner(Point v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopLeftCorner() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopLeftCorner() => clearField(1);
  @$pb.TagNumber(1)
  Point ensureTopLeftCorner() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get width => $_getN(1);
  @$pb.TagNumber(2)
  set width($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get height => $_getN(2);
  @$pb.TagNumber(3)
  set height($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get resourceId => $_getSZ(3);
  @$pb.TagNumber(4)
  set resourceId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasResourceId() => $_has(3);
  @$pb.TagNumber(4)
  void clearResourceId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get pageNumber => $_getIZ(4);
  @$pb.TagNumber(5)
  set pageNumber($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPageNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearPageNumber() => clearField(5);
}

class Pointer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Pointer', createEmptyInstance: create)
    ..aOM<Point>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coordinates', subBuilder: Point.create)
    ..aOM<Color>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color', subBuilder: Color.create)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'strokeWidth', $pb.PbFieldType.OD, protoName: 'strokeWidth')
    ..e<Pointer_PointerType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Pointer_PointerType.none, valueOf: Pointer_PointerType.valueOf, enumValues: Pointer_PointerType.values)
    ..hasRequiredFields = false
  ;

  Pointer._() : super();
  factory Pointer({
    Point coordinates,
    Color color,
    $core.double strokeWidth,
    Pointer_PointerType type,
  }) {
    final _result = create();
    if (coordinates != null) {
      _result.coordinates = coordinates;
    }
    if (color != null) {
      _result.color = color;
    }
    if (strokeWidth != null) {
      _result.strokeWidth = strokeWidth;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory Pointer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pointer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Pointer clone() => Pointer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Pointer copyWith(void Function(Pointer) updates) => super.copyWith((message) => updates(message as Pointer)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pointer create() => Pointer._();
  Pointer createEmptyInstance() => create();
  static $pb.PbList<Pointer> createRepeated() => $pb.PbList<Pointer>();
  @$core.pragma('dart2js:noInline')
  static Pointer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pointer>(create);
  static Pointer _defaultInstance;

  @$pb.TagNumber(1)
  Point get coordinates => $_getN(0);
  @$pb.TagNumber(1)
  set coordinates(Point v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCoordinates() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoordinates() => clearField(1);
  @$pb.TagNumber(1)
  Point ensureCoordinates() => $_ensure(0);

  @$pb.TagNumber(2)
  Color get color => $_getN(1);
  @$pb.TagNumber(2)
  set color(Color v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => clearField(2);
  @$pb.TagNumber(2)
  Color ensureColor() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get strokeWidth => $_getN(2);
  @$pb.TagNumber(3)
  set strokeWidth($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStrokeWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearStrokeWidth() => clearField(3);

  @$pb.TagNumber(4)
  Pointer_PointerType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(Pointer_PointerType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);
}

class Viewport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Viewport', createEmptyInstance: create)
    ..aOM<Point>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'topLeftCorner', subBuilder: Point.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.OD)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  Viewport._() : super();
  factory Viewport({
    Point topLeftCorner,
    $core.double width,
    $core.double height,
  }) {
    final _result = create();
    if (topLeftCorner != null) {
      _result.topLeftCorner = topLeftCorner;
    }
    if (width != null) {
      _result.width = width;
    }
    if (height != null) {
      _result.height = height;
    }
    return _result;
  }
  factory Viewport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Viewport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Viewport clone() => Viewport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Viewport copyWith(void Function(Viewport) updates) => super.copyWith((message) => updates(message as Viewport)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Viewport create() => Viewport._();
  Viewport createEmptyInstance() => create();
  static $pb.PbList<Viewport> createRepeated() => $pb.PbList<Viewport>();
  @$core.pragma('dart2js:noInline')
  static Viewport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Viewport>(create);
  static Viewport _defaultInstance;

  @$pb.TagNumber(1)
  Point get topLeftCorner => $_getN(0);
  @$pb.TagNumber(1)
  set topLeftCorner(Point v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopLeftCorner() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopLeftCorner() => clearField(1);
  @$pb.TagNumber(1)
  Point ensureTopLeftCorner() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get width => $_getN(1);
  @$pb.TagNumber(2)
  set width($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get height => $_getN(2);
  @$pb.TagNumber(3)
  set height($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => clearField(3);
}

class RenderingInstructions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RenderingInstructions', createEmptyInstance: create)
    ..aOM<Viewport>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'viewport', subBuilder: Viewport.create)
    ..aOM<Color>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backgroundColor', subBuilder: Color.create)
    ..pc<MaterialRenderable>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'materialRenderables', $pb.PbFieldType.PM, protoName: 'materialRenderables', subBuilder: MaterialRenderable.create)
    ..pc<Path>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paths', $pb.PbFieldType.PM, subBuilder: Path.create)
    ..aOM<Pointer>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pointer', subBuilder: Pointer.create)
    ..hasRequiredFields = false
  ;

  RenderingInstructions._() : super();
  factory RenderingInstructions({
    Viewport viewport,
    Color backgroundColor,
    $core.Iterable<MaterialRenderable> materialRenderables,
    $core.Iterable<Path> paths,
    Pointer pointer,
  }) {
    final _result = create();
    if (viewport != null) {
      _result.viewport = viewport;
    }
    if (backgroundColor != null) {
      _result.backgroundColor = backgroundColor;
    }
    if (materialRenderables != null) {
      _result.materialRenderables.addAll(materialRenderables);
    }
    if (paths != null) {
      _result.paths.addAll(paths);
    }
    if (pointer != null) {
      _result.pointer = pointer;
    }
    return _result;
  }
  factory RenderingInstructions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RenderingInstructions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RenderingInstructions clone() => RenderingInstructions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RenderingInstructions copyWith(void Function(RenderingInstructions) updates) => super.copyWith((message) => updates(message as RenderingInstructions)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RenderingInstructions create() => RenderingInstructions._();
  RenderingInstructions createEmptyInstance() => create();
  static $pb.PbList<RenderingInstructions> createRepeated() => $pb.PbList<RenderingInstructions>();
  @$core.pragma('dart2js:noInline')
  static RenderingInstructions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RenderingInstructions>(create);
  static RenderingInstructions _defaultInstance;

  @$pb.TagNumber(1)
  Viewport get viewport => $_getN(0);
  @$pb.TagNumber(1)
  set viewport(Viewport v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasViewport() => $_has(0);
  @$pb.TagNumber(1)
  void clearViewport() => clearField(1);
  @$pb.TagNumber(1)
  Viewport ensureViewport() => $_ensure(0);

  @$pb.TagNumber(2)
  Color get backgroundColor => $_getN(1);
  @$pb.TagNumber(2)
  set backgroundColor(Color v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBackgroundColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearBackgroundColor() => clearField(2);
  @$pb.TagNumber(2)
  Color ensureBackgroundColor() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<MaterialRenderable> get materialRenderables => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<Path> get paths => $_getList(3);

  @$pb.TagNumber(5)
  Pointer get pointer => $_getN(4);
  @$pb.TagNumber(5)
  set pointer(Pointer v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPointer() => $_has(4);
  @$pb.TagNumber(5)
  void clearPointer() => clearField(5);
  @$pb.TagNumber(5)
  Pointer ensurePointer() => $_ensure(4);
}

