///
//  Generated code. Do not modify.
//  source: npxl_video.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use videoHeaderDescriptor instead')
const VideoHeader$json = const {
  '1': 'VideoHeader',
  '2': const [
    const {'1': 'audio_properties', '3': 1, '4': 1, '5': 11, '6': '.AudioProperties', '10': 'audioProperties'},
    const {'1': 'video_duration_in_millis', '3': 2, '4': 1, '5': 13, '10': 'videoDurationInMillis'},
    const {'1': 'media_page_data_ranges', '3': 3, '4': 3, '5': 11, '6': '.DataRange', '10': 'mediaPageDataRanges'},
    const {'1': 'videoResourceDataRanges', '3': 4, '4': 3, '5': 11, '6': '.VideoHeader.VideoResourceDataRangesEntry', '10': 'videoResourceDataRanges'},
  ],
  '3': const [VideoHeader_VideoResourceDataRangesEntry$json],
};

@$core.Deprecated('Use videoHeaderDescriptor instead')
const VideoHeader_VideoResourceDataRangesEntry$json = const {
  '1': 'VideoResourceDataRangesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.DataRange', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `VideoHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoHeaderDescriptor = $convert.base64Decode('CgtWaWRlb0hlYWRlchI7ChBhdWRpb19wcm9wZXJ0aWVzGAEgASgLMhAuQXVkaW9Qcm9wZXJ0aWVzUg9hdWRpb1Byb3BlcnRpZXMSNwoYdmlkZW9fZHVyYXRpb25faW5fbWlsbGlzGAIgASgNUhV2aWRlb0R1cmF0aW9uSW5NaWxsaXMSPwoWbWVkaWFfcGFnZV9kYXRhX3JhbmdlcxgDIAMoCzIKLkRhdGFSYW5nZVITbWVkaWFQYWdlRGF0YVJhbmdlcxJjChd2aWRlb1Jlc291cmNlRGF0YVJhbmdlcxgEIAMoCzIpLlZpZGVvSGVhZGVyLlZpZGVvUmVzb3VyY2VEYXRhUmFuZ2VzRW50cnlSF3ZpZGVvUmVzb3VyY2VEYXRhUmFuZ2VzGlYKHFZpZGVvUmVzb3VyY2VEYXRhUmFuZ2VzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSIAoFdmFsdWUYAiABKAsyCi5EYXRhUmFuZ2VSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use mediaPageHeaderDescriptor instead')
const MediaPageHeader$json = const {
  '1': 'MediaPageHeader',
  '2': const [
    const {'1': 'media_page_number', '3': 1, '4': 1, '5': 13, '10': 'mediaPageNumber'},
    const {'1': 'page_duration_in_millis', '3': 2, '4': 1, '5': 13, '10': 'pageDurationInMillis'},
    const {'1': 'vectorFrame', '3': 3, '4': 1, '5': 11, '6': '.RenderingInstructions', '10': 'vectorFrame'},
  ],
};

/// Descriptor for `MediaPageHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mediaPageHeaderDescriptor = $convert.base64Decode('Cg9NZWRpYVBhZ2VIZWFkZXISKgoRbWVkaWFfcGFnZV9udW1iZXIYASABKA1SD21lZGlhUGFnZU51bWJlchI1ChdwYWdlX2R1cmF0aW9uX2luX21pbGxpcxgCIAEoDVIUcGFnZUR1cmF0aW9uSW5NaWxsaXMSOAoLdmVjdG9yRnJhbWUYAyABKAsyFi5SZW5kZXJpbmdJbnN0cnVjdGlvbnNSC3ZlY3RvckZyYW1l');
@$core.Deprecated('Use videoResourceHeaderDescriptor instead')
const VideoResourceHeader$json = const {
  '1': 'VideoResourceHeader',
  '2': const [
    const {'1': 'mime_type', '3': 2, '4': 1, '5': 9, '10': 'mimeType'},
  ],
};

/// Descriptor for `VideoResourceHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoResourceHeaderDescriptor = $convert.base64Decode('ChNWaWRlb1Jlc291cmNlSGVhZGVyEhsKCW1pbWVfdHlwZRgCIAEoCVIIbWltZVR5cGU=');
@$core.Deprecated('Use dataRangeDescriptor instead')
const DataRange$json = const {
  '1': 'DataRange',
  '2': const [
    const {'1': 'start', '3': 1, '4': 1, '5': 13, '10': 'start'},
    const {'1': 'end', '3': 2, '4': 1, '5': 13, '10': 'end'},
  ],
};

/// Descriptor for `DataRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataRangeDescriptor = $convert.base64Decode('CglEYXRhUmFuZ2USFAoFc3RhcnQYASABKA1SBXN0YXJ0EhAKA2VuZBgCIAEoDVIDZW5k');
@$core.Deprecated('Use audioPropertiesDescriptor instead')
const AudioProperties$json = const {
  '1': 'AudioProperties',
  '2': const [
    const {'1': 'sampling_rate', '3': 1, '4': 1, '5': 13, '10': 'samplingRate'},
    const {'1': 'number_of_channels', '3': 2, '4': 1, '5': 13, '10': 'numberOfChannels'},
    const {'1': 'frame_size', '3': 3, '4': 1, '5': 13, '10': 'frameSize'},
  ],
};

/// Descriptor for `AudioProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List audioPropertiesDescriptor = $convert.base64Decode('Cg9BdWRpb1Byb3BlcnRpZXMSIwoNc2FtcGxpbmdfcmF0ZRgBIAEoDVIMc2FtcGxpbmdSYXRlEiwKEm51bWJlcl9vZl9jaGFubmVscxgCIAEoDVIQbnVtYmVyT2ZDaGFubmVscxIdCgpmcmFtZV9zaXplGAMgASgNUglmcmFtZVNpemU=');
@$core.Deprecated('Use colorDescriptor instead')
const Color$json = const {
  '1': 'Color',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 13, '10': 'value'},
  ],
};

/// Descriptor for `Color`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorDescriptor = $convert.base64Decode('CgVDb2xvchIUCgV2YWx1ZRgBIAEoDVIFdmFsdWU=');
@$core.Deprecated('Use pointDescriptor instead')
const Point$json = const {
  '1': 'Point',
  '2': const [
    const {'1': 'dx', '3': 1, '4': 1, '5': 1, '10': 'dx'},
    const {'1': 'dy', '3': 2, '4': 1, '5': 1, '10': 'dy'},
  ],
};

/// Descriptor for `Point`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointDescriptor = $convert.base64Decode('CgVQb2ludBIOCgJkeBgBIAEoAVICZHgSDgoCZHkYAiABKAFSAmR5');
@$core.Deprecated('Use pathPointDescriptor instead')
const PathPoint$json = const {
  '1': 'PathPoint',
  '2': const [
    const {'1': 'coordinates', '3': 1, '4': 1, '5': 11, '6': '.Point', '10': 'coordinates'},
    const {'1': 'pressure', '3': 2, '4': 1, '5': 1, '10': 'pressure'},
  ],
};

/// Descriptor for `PathPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pathPointDescriptor = $convert.base64Decode('CglQYXRoUG9pbnQSKAoLY29vcmRpbmF0ZXMYASABKAsyBi5Qb2ludFILY29vcmRpbmF0ZXMSGgoIcHJlc3N1cmUYAiABKAFSCHByZXNzdXJl');
@$core.Deprecated('Use pathDescriptor instead')
const Path$json = const {
  '1': 'Path',
  '2': const [
    const {'1': 'color', '3': 1, '4': 1, '5': 11, '6': '.Color', '10': 'color'},
    const {'1': 'strokeWidth', '3': 2, '4': 1, '5': 1, '10': 'strokeWidth'},
    const {'1': 'points', '3': 3, '4': 3, '5': 11, '6': '.PathPoint', '10': 'points'},
  ],
};

/// Descriptor for `Path`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pathDescriptor = $convert.base64Decode('CgRQYXRoEhwKBWNvbG9yGAEgASgLMgYuQ29sb3JSBWNvbG9yEiAKC3N0cm9rZVdpZHRoGAIgASgBUgtzdHJva2VXaWR0aBIiCgZwb2ludHMYAyADKAsyCi5QYXRoUG9pbnRSBnBvaW50cw==');
@$core.Deprecated('Use materialRenderableDescriptor instead')
const MaterialRenderable$json = const {
  '1': 'MaterialRenderable',
  '2': const [
    const {'1': 'top_left_corner', '3': 1, '4': 1, '5': 11, '6': '.Point', '10': 'topLeftCorner'},
    const {'1': 'width', '3': 2, '4': 1, '5': 1, '10': 'width'},
    const {'1': 'height', '3': 3, '4': 1, '5': 1, '10': 'height'},
    const {'1': 'resource_id', '3': 4, '4': 1, '5': 9, '10': 'resourceId'},
    const {'1': 'page_number', '3': 5, '4': 1, '5': 13, '10': 'pageNumber'},
  ],
};

/// Descriptor for `MaterialRenderable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List materialRenderableDescriptor = $convert.base64Decode('ChJNYXRlcmlhbFJlbmRlcmFibGUSLgoPdG9wX2xlZnRfY29ybmVyGAEgASgLMgYuUG9pbnRSDXRvcExlZnRDb3JuZXISFAoFd2lkdGgYAiABKAFSBXdpZHRoEhYKBmhlaWdodBgDIAEoAVIGaGVpZ2h0Eh8KC3Jlc291cmNlX2lkGAQgASgJUgpyZXNvdXJjZUlkEh8KC3BhZ2VfbnVtYmVyGAUgASgNUgpwYWdlTnVtYmVy');
@$core.Deprecated('Use pointerDescriptor instead')
const Pointer$json = const {
  '1': 'Pointer',
  '2': const [
    const {'1': 'coordinates', '3': 1, '4': 1, '5': 11, '6': '.Point', '10': 'coordinates'},
    const {'1': 'color', '3': 2, '4': 1, '5': 11, '6': '.Color', '10': 'color'},
    const {'1': 'strokeWidth', '3': 3, '4': 1, '5': 1, '10': 'strokeWidth'},
    const {'1': 'type', '3': 4, '4': 1, '5': 14, '6': '.Pointer.PointerType', '10': 'type'},
  ],
  '4': const [Pointer_PointerType$json],
};

@$core.Deprecated('Use pointerDescriptor instead')
const Pointer_PointerType$json = const {
  '1': 'PointerType',
  '2': const [
    const {'1': 'none', '2': 0},
    const {'1': 'circle', '2': 1},
    const {'1': 'pen', '2': 2},
    const {'1': 'finger', '2': 3},
  ],
};

/// Descriptor for `Pointer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointerDescriptor = $convert.base64Decode('CgdQb2ludGVyEigKC2Nvb3JkaW5hdGVzGAEgASgLMgYuUG9pbnRSC2Nvb3JkaW5hdGVzEhwKBWNvbG9yGAIgASgLMgYuQ29sb3JSBWNvbG9yEiAKC3N0cm9rZVdpZHRoGAMgASgBUgtzdHJva2VXaWR0aBIoCgR0eXBlGAQgASgOMhQuUG9pbnRlci5Qb2ludGVyVHlwZVIEdHlwZSI4CgtQb2ludGVyVHlwZRIICgRub25lEAASCgoGY2lyY2xlEAESBwoDcGVuEAISCgoGZmluZ2VyEAM=');
@$core.Deprecated('Use viewportDescriptor instead')
const Viewport$json = const {
  '1': 'Viewport',
  '2': const [
    const {'1': 'top_left_corner', '3': 1, '4': 1, '5': 11, '6': '.Point', '10': 'topLeftCorner'},
    const {'1': 'width', '3': 2, '4': 1, '5': 1, '10': 'width'},
    const {'1': 'height', '3': 3, '4': 1, '5': 1, '10': 'height'},
  ],
};

/// Descriptor for `Viewport`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List viewportDescriptor = $convert.base64Decode('CghWaWV3cG9ydBIuCg90b3BfbGVmdF9jb3JuZXIYASABKAsyBi5Qb2ludFINdG9wTGVmdENvcm5lchIUCgV3aWR0aBgCIAEoAVIFd2lkdGgSFgoGaGVpZ2h0GAMgASgBUgZoZWlnaHQ=');
@$core.Deprecated('Use renderingInstructionsDescriptor instead')
const RenderingInstructions$json = const {
  '1': 'RenderingInstructions',
  '2': const [
    const {'1': 'viewport', '3': 1, '4': 1, '5': 11, '6': '.Viewport', '10': 'viewport'},
    const {'1': 'background_color', '3': 2, '4': 1, '5': 11, '6': '.Color', '10': 'backgroundColor'},
    const {'1': 'materialRenderables', '3': 3, '4': 3, '5': 11, '6': '.MaterialRenderable', '10': 'materialRenderables'},
    const {'1': 'paths', '3': 4, '4': 3, '5': 11, '6': '.Path', '10': 'paths'},
    const {'1': 'pointer', '3': 5, '4': 1, '5': 11, '6': '.Pointer', '10': 'pointer'},
  ],
};

/// Descriptor for `RenderingInstructions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renderingInstructionsDescriptor = $convert.base64Decode('ChVSZW5kZXJpbmdJbnN0cnVjdGlvbnMSJQoIdmlld3BvcnQYASABKAsyCS5WaWV3cG9ydFIIdmlld3BvcnQSMQoQYmFja2dyb3VuZF9jb2xvchgCIAEoCzIGLkNvbG9yUg9iYWNrZ3JvdW5kQ29sb3ISRQoTbWF0ZXJpYWxSZW5kZXJhYmxlcxgDIAMoCzITLk1hdGVyaWFsUmVuZGVyYWJsZVITbWF0ZXJpYWxSZW5kZXJhYmxlcxIbCgVwYXRocxgEIAMoCzIFLlBhdGhSBXBhdGhzEiIKB3BvaW50ZXIYBSABKAsyCC5Qb2ludGVyUgdwb2ludGVy');
