///
//  Generated code. Do not modify.
//  source: npxl_video.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Pointer_PointerType extends $pb.ProtobufEnum {
  static const Pointer_PointerType none = Pointer_PointerType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'none');
  static const Pointer_PointerType circle = Pointer_PointerType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'circle');
  static const Pointer_PointerType pen = Pointer_PointerType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'pen');
  static const Pointer_PointerType finger = Pointer_PointerType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'finger');

  static const $core.List<Pointer_PointerType> values = <Pointer_PointerType> [
    none,
    circle,
    pen,
    finger,
  ];

  static final $core.Map<$core.int, Pointer_PointerType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Pointer_PointerType? valueOf($core.int value) => _byValue[value];

  const Pointer_PointerType._($core.int v, $core.String n) : super(v, n);
}

