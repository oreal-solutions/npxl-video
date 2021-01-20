///
//  Generated code. Do not modify.
//  source: npxl_video.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

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

const VideoHeader_VideoResourceDataRangesEntry$json = const {
  '1': 'VideoResourceDataRangesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.DataRange', '10': 'value'},
  ],
  '7': const {'7': true},
};

const MediaPageHeader$json = const {
  '1': 'MediaPageHeader',
  '2': const [
    const {'1': 'media_page_number', '3': 1, '4': 1, '5': 13, '10': 'mediaPageNumber'},
    const {'1': 'page_duration_in_millis', '3': 2, '4': 1, '5': 13, '10': 'pageDurationInMillis'},
    const {'1': 'vectorFrame', '3': 3, '4': 1, '5': 11, '6': '.RenderingInstructions', '10': 'vectorFrame'},
  ],
};

const VideoResourceHeader$json = const {
  '1': 'VideoResourceHeader',
  '2': const [
    const {'1': 'mime_type', '3': 2, '4': 1, '5': 9, '10': 'mimeType'},
  ],
};

const DataRange$json = const {
  '1': 'DataRange',
  '2': const [
    const {'1': 'start', '3': 1, '4': 1, '5': 13, '10': 'start'},
    const {'1': 'end', '3': 2, '4': 1, '5': 13, '10': 'end'},
  ],
};

const AudioProperties$json = const {
  '1': 'AudioProperties',
  '2': const [
    const {'1': 'sampling_rate', '3': 1, '4': 1, '5': 13, '10': 'samplingRate'},
    const {'1': 'number_of_channels', '3': 2, '4': 1, '5': 13, '10': 'numberOfChannels'},
    const {'1': 'frame_size', '3': 3, '4': 1, '5': 13, '10': 'frameSize'},
  ],
};

const Color$json = const {
  '1': 'Color',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 13, '10': 'value'},
  ],
};

const Point$json = const {
  '1': 'Point',
  '2': const [
    const {'1': 'dx', '3': 1, '4': 1, '5': 1, '10': 'dx'},
    const {'1': 'dy', '3': 2, '4': 1, '5': 1, '10': 'dy'},
  ],
};

const PathPoint$json = const {
  '1': 'PathPoint',
  '2': const [
    const {'1': 'coordinates', '3': 1, '4': 1, '5': 11, '6': '.Point', '10': 'coordinates'},
    const {'1': 'pressure', '3': 2, '4': 1, '5': 1, '10': 'pressure'},
  ],
};

const Path$json = const {
  '1': 'Path',
  '2': const [
    const {'1': 'color', '3': 1, '4': 1, '5': 11, '6': '.Color', '10': 'color'},
    const {'1': 'strokeWidth', '3': 2, '4': 1, '5': 1, '10': 'strokeWidth'},
    const {'1': 'points', '3': 3, '4': 3, '5': 11, '6': '.PathPoint', '10': 'points'},
  ],
};

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

const Pointer_PointerType$json = const {
  '1': 'PointerType',
  '2': const [
    const {'1': 'none', '2': 0},
    const {'1': 'circle', '2': 1},
    const {'1': 'pen', '2': 2},
    const {'1': 'finger', '2': 3},
  ],
};

const Viewport$json = const {
  '1': 'Viewport',
  '2': const [
    const {'1': 'top_left_corner', '3': 1, '4': 1, '5': 11, '6': '.Point', '10': 'topLeftCorner'},
    const {'1': 'width', '3': 2, '4': 1, '5': 1, '10': 'width'},
    const {'1': 'height', '3': 3, '4': 1, '5': 1, '10': 'height'},
  ],
};

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

