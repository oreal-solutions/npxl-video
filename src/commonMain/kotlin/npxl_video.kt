@file:OptIn(pbandk.PublicForGeneratedCode::class)


data class VideoHeader(
    val audioPropeties: AudioProperties? = null,
    val startOfVideoResourcesSection: Int = 0,
    override val unknownFields: Map<Int, pbandk.UnknownField> = emptyMap()
) : pbandk.Message {
    override operator fun plus(other: pbandk.Message?) = protoMergeImpl(other)
    override val descriptor get() = Companion.descriptor
    override val protoSize by lazy { super.protoSize }
    companion object : pbandk.Message.Companion<VideoHeader> {
        val defaultInstance by lazy { VideoHeader() }
        override fun decodeWith(u: pbandk.MessageDecoder) = VideoHeader.decodeWithImpl(u)

        override val descriptor: pbandk.MessageDescriptor<VideoHeader> by lazy {
            val fieldsList = ArrayList<pbandk.FieldDescriptor<VideoHeader, *>>(2).apply {
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "audio_propeties",
                        number = 1,
                        type = pbandk.FieldDescriptor.Type.Message(messageCompanion = AudioProperties.Companion),
                        jsonName = "audioPropeties",
                        value = VideoHeader::audioPropeties
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "start_of_video_resources_section",
                        number = 2,
                        type = pbandk.FieldDescriptor.Type.Primitive.UInt32(),
                        jsonName = "startOfVideoResourcesSection",
                        value = VideoHeader::startOfVideoResourcesSection
                    )
                )
            }
            pbandk.MessageDescriptor(
                messageClass = VideoHeader::class,
                messageCompanion = this,
                fields = fieldsList
            )
        }
    }
}

data class MediaPageHeader(
    val mediaPageNumber: Int = 0,
    val pageDurationMillis: Int = 0,
    val vectorFrame: RenderingInstructions? = null,
    val audioDataSectionSize: Int = 0,
    override val unknownFields: Map<Int, pbandk.UnknownField> = emptyMap()
) : pbandk.Message {
    override operator fun plus(other: pbandk.Message?) = protoMergeImpl(other)
    override val descriptor get() = Companion.descriptor
    override val protoSize by lazy { super.protoSize }
    companion object : pbandk.Message.Companion<MediaPageHeader> {
        val defaultInstance by lazy { MediaPageHeader() }
        override fun decodeWith(u: pbandk.MessageDecoder) = MediaPageHeader.decodeWithImpl(u)

        override val descriptor: pbandk.MessageDescriptor<MediaPageHeader> by lazy {
            val fieldsList = ArrayList<pbandk.FieldDescriptor<MediaPageHeader, *>>(4).apply {
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "media_page_number",
                        number = 1,
                        type = pbandk.FieldDescriptor.Type.Primitive.UInt32(),
                        jsonName = "mediaPageNumber",
                        value = MediaPageHeader::mediaPageNumber
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "page_duration_millis",
                        number = 2,
                        type = pbandk.FieldDescriptor.Type.Primitive.UInt32(),
                        jsonName = "pageDurationMillis",
                        value = MediaPageHeader::pageDurationMillis
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "vectorFrame",
                        number = 3,
                        type = pbandk.FieldDescriptor.Type.Message(messageCompanion = RenderingInstructions.Companion),
                        jsonName = "vectorFrame",
                        value = MediaPageHeader::vectorFrame
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "audio_data_section_size",
                        number = 4,
                        type = pbandk.FieldDescriptor.Type.Primitive.UInt32(),
                        jsonName = "audioDataSectionSize",
                        value = MediaPageHeader::audioDataSectionSize
                    )
                )
            }
            pbandk.MessageDescriptor(
                messageClass = MediaPageHeader::class,
                messageCompanion = this,
                fields = fieldsList
            )
        }
    }
}

data class VideoResourceHeader(
    val resourceId: String = "",
    val mimeType: String = "",
    val dataSectionSize: Int = 0,
    override val unknownFields: Map<Int, pbandk.UnknownField> = emptyMap()
) : pbandk.Message {
    override operator fun plus(other: pbandk.Message?) = protoMergeImpl(other)
    override val descriptor get() = Companion.descriptor
    override val protoSize by lazy { super.protoSize }
    companion object : pbandk.Message.Companion<VideoResourceHeader> {
        val defaultInstance by lazy { VideoResourceHeader() }
        override fun decodeWith(u: pbandk.MessageDecoder) = VideoResourceHeader.decodeWithImpl(u)

        override val descriptor: pbandk.MessageDescriptor<VideoResourceHeader> by lazy {
            val fieldsList = ArrayList<pbandk.FieldDescriptor<VideoResourceHeader, *>>(3).apply {
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "resource_id",
                        number = 1,
                        type = pbandk.FieldDescriptor.Type.Primitive.String(),
                        jsonName = "resourceId",
                        value = VideoResourceHeader::resourceId
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "mime_type",
                        number = 2,
                        type = pbandk.FieldDescriptor.Type.Primitive.String(),
                        jsonName = "mimeType",
                        value = VideoResourceHeader::mimeType
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "data_section_size",
                        number = 3,
                        type = pbandk.FieldDescriptor.Type.Primitive.UInt32(),
                        jsonName = "dataSectionSize",
                        value = VideoResourceHeader::dataSectionSize
                    )
                )
            }
            pbandk.MessageDescriptor(
                messageClass = VideoResourceHeader::class,
                messageCompanion = this,
                fields = fieldsList
            )
        }
    }
}

data class AudioProperties(
    val samplingRate: Int = 0,
    val numberOfChannels: Int = 0,
    override val unknownFields: Map<Int, pbandk.UnknownField> = emptyMap()
) : pbandk.Message {
    override operator fun plus(other: pbandk.Message?) = protoMergeImpl(other)
    override val descriptor get() = Companion.descriptor
    override val protoSize by lazy { super.protoSize }
    companion object : pbandk.Message.Companion<AudioProperties> {
        val defaultInstance by lazy { AudioProperties() }
        override fun decodeWith(u: pbandk.MessageDecoder) = AudioProperties.decodeWithImpl(u)

        override val descriptor: pbandk.MessageDescriptor<AudioProperties> by lazy {
            val fieldsList = ArrayList<pbandk.FieldDescriptor<AudioProperties, *>>(2).apply {
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "sampling_rate",
                        number = 1,
                        type = pbandk.FieldDescriptor.Type.Primitive.UInt32(),
                        jsonName = "samplingRate",
                        value = AudioProperties::samplingRate
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "number_of_channels",
                        number = 2,
                        type = pbandk.FieldDescriptor.Type.Primitive.UInt32(),
                        jsonName = "numberOfChannels",
                        value = AudioProperties::numberOfChannels
                    )
                )
            }
            pbandk.MessageDescriptor(
                messageClass = AudioProperties::class,
                messageCompanion = this,
                fields = fieldsList
            )
        }
    }
}

data class Color(
    val value: Int = 0,
    override val unknownFields: Map<Int, pbandk.UnknownField> = emptyMap()
) : pbandk.Message {
    override operator fun plus(other: pbandk.Message?) = protoMergeImpl(other)
    override val descriptor get() = Companion.descriptor
    override val protoSize by lazy { super.protoSize }
    companion object : pbandk.Message.Companion<Color> {
        val defaultInstance by lazy { Color() }
        override fun decodeWith(u: pbandk.MessageDecoder) = Color.decodeWithImpl(u)

        override val descriptor: pbandk.MessageDescriptor<Color> by lazy {
            val fieldsList = ArrayList<pbandk.FieldDescriptor<Color, *>>(1).apply {
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "value",
                        number = 1,
                        type = pbandk.FieldDescriptor.Type.Primitive.UInt32(),
                        jsonName = "value",
                        value = Color::value
                    )
                )
            }
            pbandk.MessageDescriptor(
                messageClass = Color::class,
                messageCompanion = this,
                fields = fieldsList
            )
        }
    }
}

data class Point(
    val dx: Double = 0.0,
    val dy: Double = 0.0,
    override val unknownFields: Map<Int, pbandk.UnknownField> = emptyMap()
) : pbandk.Message {
    override operator fun plus(other: pbandk.Message?) = protoMergeImpl(other)
    override val descriptor get() = Companion.descriptor
    override val protoSize by lazy { super.protoSize }
    companion object : pbandk.Message.Companion<Point> {
        val defaultInstance by lazy { Point() }
        override fun decodeWith(u: pbandk.MessageDecoder) = Point.decodeWithImpl(u)

        override val descriptor: pbandk.MessageDescriptor<Point> by lazy {
            val fieldsList = ArrayList<pbandk.FieldDescriptor<Point, *>>(2).apply {
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "dx",
                        number = 1,
                        type = pbandk.FieldDescriptor.Type.Primitive.Double(),
                        jsonName = "dx",
                        value = Point::dx
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "dy",
                        number = 2,
                        type = pbandk.FieldDescriptor.Type.Primitive.Double(),
                        jsonName = "dy",
                        value = Point::dy
                    )
                )
            }
            pbandk.MessageDescriptor(
                messageClass = Point::class,
                messageCompanion = this,
                fields = fieldsList
            )
        }
    }
}

data class PathPoint(
    val coordinates: Point? = null,
    val pressure: Double = 0.0,
    override val unknownFields: Map<Int, pbandk.UnknownField> = emptyMap()
) : pbandk.Message {
    override operator fun plus(other: pbandk.Message?) = protoMergeImpl(other)
    override val descriptor get() = Companion.descriptor
    override val protoSize by lazy { super.protoSize }
    companion object : pbandk.Message.Companion<PathPoint> {
        val defaultInstance by lazy { PathPoint() }
        override fun decodeWith(u: pbandk.MessageDecoder) = PathPoint.decodeWithImpl(u)

        override val descriptor: pbandk.MessageDescriptor<PathPoint> by lazy {
            val fieldsList = ArrayList<pbandk.FieldDescriptor<PathPoint, *>>(2).apply {
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "coordinates",
                        number = 1,
                        type = pbandk.FieldDescriptor.Type.Message(messageCompanion = Point.Companion),
                        jsonName = "coordinates",
                        value = PathPoint::coordinates
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "pressure",
                        number = 2,
                        type = pbandk.FieldDescriptor.Type.Primitive.Double(),
                        jsonName = "pressure",
                        value = PathPoint::pressure
                    )
                )
            }
            pbandk.MessageDescriptor(
                messageClass = PathPoint::class,
                messageCompanion = this,
                fields = fieldsList
            )
        }
    }
}

data class Path(
    val color: Color? = null,
    val strokeWidth: Double = 0.0,
    val points: List<PathPoint> = emptyList(),
    override val unknownFields: Map<Int, pbandk.UnknownField> = emptyMap()
) : pbandk.Message {
    override operator fun plus(other: pbandk.Message?) = protoMergeImpl(other)
    override val descriptor get() = Companion.descriptor
    override val protoSize by lazy { super.protoSize }
    companion object : pbandk.Message.Companion<Path> {
        val defaultInstance by lazy { Path() }
        override fun decodeWith(u: pbandk.MessageDecoder) = Path.decodeWithImpl(u)

        override val descriptor: pbandk.MessageDescriptor<Path> by lazy {
            val fieldsList = ArrayList<pbandk.FieldDescriptor<Path, *>>(3).apply {
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "color",
                        number = 1,
                        type = pbandk.FieldDescriptor.Type.Message(messageCompanion = Color.Companion),
                        jsonName = "color",
                        value = Path::color
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "strokeWidth",
                        number = 2,
                        type = pbandk.FieldDescriptor.Type.Primitive.Double(),
                        jsonName = "strokeWidth",
                        value = Path::strokeWidth
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "points",
                        number = 3,
                        type = pbandk.FieldDescriptor.Type.Repeated<PathPoint>(valueType = pbandk.FieldDescriptor.Type.Message(messageCompanion = PathPoint.Companion)),
                        jsonName = "points",
                        value = Path::points
                    )
                )
            }
            pbandk.MessageDescriptor(
                messageClass = Path::class,
                messageCompanion = this,
                fields = fieldsList
            )
        }
    }
}

data class MaterialRenderable(
    val topLeftCorner: Point? = null,
    val width: Double = 0.0,
    val height: Double = 0.0,
    val resourceId: String = "",
    val pageNumber: Int = 0,
    override val unknownFields: Map<Int, pbandk.UnknownField> = emptyMap()
) : pbandk.Message {
    override operator fun plus(other: pbandk.Message?) = protoMergeImpl(other)
    override val descriptor get() = Companion.descriptor
    override val protoSize by lazy { super.protoSize }
    companion object : pbandk.Message.Companion<MaterialRenderable> {
        val defaultInstance by lazy { MaterialRenderable() }
        override fun decodeWith(u: pbandk.MessageDecoder) = MaterialRenderable.decodeWithImpl(u)

        override val descriptor: pbandk.MessageDescriptor<MaterialRenderable> by lazy {
            val fieldsList = ArrayList<pbandk.FieldDescriptor<MaterialRenderable, *>>(5).apply {
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "top_left_corner",
                        number = 1,
                        type = pbandk.FieldDescriptor.Type.Message(messageCompanion = Point.Companion),
                        jsonName = "topLeftCorner",
                        value = MaterialRenderable::topLeftCorner
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "width",
                        number = 2,
                        type = pbandk.FieldDescriptor.Type.Primitive.Double(),
                        jsonName = "width",
                        value = MaterialRenderable::width
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "height",
                        number = 3,
                        type = pbandk.FieldDescriptor.Type.Primitive.Double(),
                        jsonName = "height",
                        value = MaterialRenderable::height
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "resource_id",
                        number = 4,
                        type = pbandk.FieldDescriptor.Type.Primitive.String(),
                        jsonName = "resourceId",
                        value = MaterialRenderable::resourceId
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "page_number",
                        number = 5,
                        type = pbandk.FieldDescriptor.Type.Primitive.UInt32(),
                        jsonName = "pageNumber",
                        value = MaterialRenderable::pageNumber
                    )
                )
            }
            pbandk.MessageDescriptor(
                messageClass = MaterialRenderable::class,
                messageCompanion = this,
                fields = fieldsList
            )
        }
    }
}

data class Pointer(
    val coordinates: Point? = null,
    val color: Color? = null,
    val strokeWidth: Double = 0.0,
    val type: Pointer.PointerType = Pointer.PointerType.fromValue(0),
    override val unknownFields: Map<Int, pbandk.UnknownField> = emptyMap()
) : pbandk.Message {
    override operator fun plus(other: pbandk.Message?) = protoMergeImpl(other)
    override val descriptor get() = Companion.descriptor
    override val protoSize by lazy { super.protoSize }
    companion object : pbandk.Message.Companion<Pointer> {
        val defaultInstance by lazy { Pointer() }
        override fun decodeWith(u: pbandk.MessageDecoder) = Pointer.decodeWithImpl(u)

        override val descriptor: pbandk.MessageDescriptor<Pointer> by lazy {
            val fieldsList = ArrayList<pbandk.FieldDescriptor<Pointer, *>>(4).apply {
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "coordinates",
                        number = 1,
                        type = pbandk.FieldDescriptor.Type.Message(messageCompanion = Point.Companion),
                        jsonName = "coordinates",
                        value = Pointer::coordinates
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "color",
                        number = 2,
                        type = pbandk.FieldDescriptor.Type.Message(messageCompanion = Color.Companion),
                        jsonName = "color",
                        value = Pointer::color
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "strokeWidth",
                        number = 3,
                        type = pbandk.FieldDescriptor.Type.Primitive.Double(),
                        jsonName = "strokeWidth",
                        value = Pointer::strokeWidth
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "type",
                        number = 4,
                        type = pbandk.FieldDescriptor.Type.Enum(enumCompanion = Pointer.PointerType.Companion),
                        jsonName = "type",
                        value = Pointer::type
                    )
                )
            }
            pbandk.MessageDescriptor(
                messageClass = Pointer::class,
                messageCompanion = this,
                fields = fieldsList
            )
        }
    }

    sealed class PointerType(override val value: Int, override val name: String? = null) : pbandk.Message.Enum {
        override fun equals(other: kotlin.Any?) = other is Pointer.PointerType && other.value == value
        override fun hashCode() = value.hashCode()
        override fun toString() = "Pointer.PointerType.${name ?: "UNRECOGNIZED"}(value=$value)"

        object NONE : PointerType(0, "none")
        object CIRCLE : PointerType(1, "circle")
        object PEN : PointerType(2, "pen")
        object FINGER : PointerType(3, "finger")
        class UNRECOGNIZED(value: Int) : Pointer.PointerType(value)

        companion object : pbandk.Message.Enum.Companion<Pointer.PointerType> {
            val values: List<Pointer.PointerType> by lazy { listOf(NONE, CIRCLE, PEN, FINGER) }
            override fun fromValue(value: Int) = values.firstOrNull { it.value == value } ?: UNRECOGNIZED(value)
            override fun fromName(name: String) = values.firstOrNull { it.name == name } ?: throw IllegalArgumentException("No PointerType with name: $name")
        }
    }
}

data class Viewport(
    val topLeftCorner: Point? = null,
    val width: Double = 0.0,
    val height: Double = 0.0,
    override val unknownFields: Map<Int, pbandk.UnknownField> = emptyMap()
) : pbandk.Message {
    override operator fun plus(other: pbandk.Message?) = protoMergeImpl(other)
    override val descriptor get() = Companion.descriptor
    override val protoSize by lazy { super.protoSize }
    companion object : pbandk.Message.Companion<Viewport> {
        val defaultInstance by lazy { Viewport() }
        override fun decodeWith(u: pbandk.MessageDecoder) = Viewport.decodeWithImpl(u)

        override val descriptor: pbandk.MessageDescriptor<Viewport> by lazy {
            val fieldsList = ArrayList<pbandk.FieldDescriptor<Viewport, *>>(3).apply {
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "top_left_corner",
                        number = 1,
                        type = pbandk.FieldDescriptor.Type.Message(messageCompanion = Point.Companion),
                        jsonName = "topLeftCorner",
                        value = Viewport::topLeftCorner
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "width",
                        number = 2,
                        type = pbandk.FieldDescriptor.Type.Primitive.Double(),
                        jsonName = "width",
                        value = Viewport::width
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "height",
                        number = 3,
                        type = pbandk.FieldDescriptor.Type.Primitive.Double(),
                        jsonName = "height",
                        value = Viewport::height
                    )
                )
            }
            pbandk.MessageDescriptor(
                messageClass = Viewport::class,
                messageCompanion = this,
                fields = fieldsList
            )
        }
    }
}

data class RenderingInstructions(
    val viewport: Viewport? = null,
    val backgroundColor: Color? = null,
    val materialRenderables: List<MaterialRenderable> = emptyList(),
    val paths: List<Path> = emptyList(),
    val pointer: Pointer? = null,
    override val unknownFields: Map<Int, pbandk.UnknownField> = emptyMap()
) : pbandk.Message {
    override operator fun plus(other: pbandk.Message?) = protoMergeImpl(other)
    override val descriptor get() = Companion.descriptor
    override val protoSize by lazy { super.protoSize }
    companion object : pbandk.Message.Companion<RenderingInstructions> {
        val defaultInstance by lazy { RenderingInstructions() }
        override fun decodeWith(u: pbandk.MessageDecoder) = RenderingInstructions.decodeWithImpl(u)

        override val descriptor: pbandk.MessageDescriptor<RenderingInstructions> by lazy {
            val fieldsList = ArrayList<pbandk.FieldDescriptor<RenderingInstructions, *>>(5).apply {
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "viewport",
                        number = 1,
                        type = pbandk.FieldDescriptor.Type.Message(messageCompanion = Viewport.Companion),
                        jsonName = "viewport",
                        value = RenderingInstructions::viewport
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "background_color",
                        number = 2,
                        type = pbandk.FieldDescriptor.Type.Message(messageCompanion = Color.Companion),
                        jsonName = "backgroundColor",
                        value = RenderingInstructions::backgroundColor
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "materialRenderables",
                        number = 3,
                        type = pbandk.FieldDescriptor.Type.Repeated<MaterialRenderable>(valueType = pbandk.FieldDescriptor.Type.Message(messageCompanion = MaterialRenderable.Companion)),
                        jsonName = "materialRenderables",
                        value = RenderingInstructions::materialRenderables
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "paths",
                        number = 4,
                        type = pbandk.FieldDescriptor.Type.Repeated<Path>(valueType = pbandk.FieldDescriptor.Type.Message(messageCompanion = Path.Companion)),
                        jsonName = "paths",
                        value = RenderingInstructions::paths
                    )
                )
                add(
                    pbandk.FieldDescriptor(
                        messageDescriptor = this@Companion::descriptor,
                        name = "pointer",
                        number = 5,
                        type = pbandk.FieldDescriptor.Type.Message(messageCompanion = Pointer.Companion),
                        jsonName = "pointer",
                        value = RenderingInstructions::pointer
                    )
                )
            }
            pbandk.MessageDescriptor(
                messageClass = RenderingInstructions::class,
                messageCompanion = this,
                fields = fieldsList
            )
        }
    }
}

fun VideoHeader?.orDefault() = this ?: VideoHeader.defaultInstance

private fun VideoHeader.protoMergeImpl(plus: pbandk.Message?): VideoHeader = (plus as? VideoHeader)?.copy(
    audioPropeties = audioPropeties?.plus(plus.audioPropeties) ?: plus.audioPropeties,
    unknownFields = unknownFields + plus.unknownFields
) ?: this

@Suppress("UNCHECKED_CAST")
private fun VideoHeader.Companion.decodeWithImpl(u: pbandk.MessageDecoder): VideoHeader {
    var audioPropeties: AudioProperties? = null
    var startOfVideoResourcesSection = 0

    val unknownFields = u.readMessage(this) { _fieldNumber, _fieldValue ->
        when (_fieldNumber) {
            1 -> audioPropeties = _fieldValue as AudioProperties
            2 -> startOfVideoResourcesSection = _fieldValue as Int
        }
    }
    return VideoHeader(audioPropeties, startOfVideoResourcesSection, unknownFields)
}

fun MediaPageHeader?.orDefault() = this ?: MediaPageHeader.defaultInstance

private fun MediaPageHeader.protoMergeImpl(plus: pbandk.Message?): MediaPageHeader = (plus as? MediaPageHeader)?.copy(
    vectorFrame = vectorFrame?.plus(plus.vectorFrame) ?: plus.vectorFrame,
    unknownFields = unknownFields + plus.unknownFields
) ?: this

@Suppress("UNCHECKED_CAST")
private fun MediaPageHeader.Companion.decodeWithImpl(u: pbandk.MessageDecoder): MediaPageHeader {
    var mediaPageNumber = 0
    var pageDurationMillis = 0
    var vectorFrame: RenderingInstructions? = null
    var audioDataSectionSize = 0

    val unknownFields = u.readMessage(this) { _fieldNumber, _fieldValue ->
        when (_fieldNumber) {
            1 -> mediaPageNumber = _fieldValue as Int
            2 -> pageDurationMillis = _fieldValue as Int
            3 -> vectorFrame = _fieldValue as RenderingInstructions
            4 -> audioDataSectionSize = _fieldValue as Int
        }
    }
    return MediaPageHeader(mediaPageNumber, pageDurationMillis, vectorFrame, audioDataSectionSize, unknownFields)
}

fun VideoResourceHeader?.orDefault() = this ?: VideoResourceHeader.defaultInstance

private fun VideoResourceHeader.protoMergeImpl(plus: pbandk.Message?): VideoResourceHeader = (plus as? VideoResourceHeader)?.copy(
    unknownFields = unknownFields + plus.unknownFields
) ?: this

@Suppress("UNCHECKED_CAST")
private fun VideoResourceHeader.Companion.decodeWithImpl(u: pbandk.MessageDecoder): VideoResourceHeader {
    var resourceId = ""
    var mimeType = ""
    var dataSectionSize = 0

    val unknownFields = u.readMessage(this) { _fieldNumber, _fieldValue ->
        when (_fieldNumber) {
            1 -> resourceId = _fieldValue as String
            2 -> mimeType = _fieldValue as String
            3 -> dataSectionSize = _fieldValue as Int
        }
    }
    return VideoResourceHeader(resourceId, mimeType, dataSectionSize, unknownFields)
}

fun AudioProperties?.orDefault() = this ?: AudioProperties.defaultInstance

private fun AudioProperties.protoMergeImpl(plus: pbandk.Message?): AudioProperties = (plus as? AudioProperties)?.copy(
    unknownFields = unknownFields + plus.unknownFields
) ?: this

@Suppress("UNCHECKED_CAST")
private fun AudioProperties.Companion.decodeWithImpl(u: pbandk.MessageDecoder): AudioProperties {
    var samplingRate = 0
    var numberOfChannels = 0

    val unknownFields = u.readMessage(this) { _fieldNumber, _fieldValue ->
        when (_fieldNumber) {
            1 -> samplingRate = _fieldValue as Int
            2 -> numberOfChannels = _fieldValue as Int
        }
    }
    return AudioProperties(samplingRate, numberOfChannels, unknownFields)
}

fun Color?.orDefault() = this ?: Color.defaultInstance

private fun Color.protoMergeImpl(plus: pbandk.Message?): Color = (plus as? Color)?.copy(
    unknownFields = unknownFields + plus.unknownFields
) ?: this

@Suppress("UNCHECKED_CAST")
private fun Color.Companion.decodeWithImpl(u: pbandk.MessageDecoder): Color {
    var value = 0

    val unknownFields = u.readMessage(this) { _fieldNumber, _fieldValue ->
        when (_fieldNumber) {
            1 -> value = _fieldValue as Int
        }
    }
    return Color(value, unknownFields)
}

fun Point?.orDefault() = this ?: Point.defaultInstance

private fun Point.protoMergeImpl(plus: pbandk.Message?): Point = (plus as? Point)?.copy(
    unknownFields = unknownFields + plus.unknownFields
) ?: this

@Suppress("UNCHECKED_CAST")
private fun Point.Companion.decodeWithImpl(u: pbandk.MessageDecoder): Point {
    var dx = 0.0
    var dy = 0.0

    val unknownFields = u.readMessage(this) { _fieldNumber, _fieldValue ->
        when (_fieldNumber) {
            1 -> dx = _fieldValue as Double
            2 -> dy = _fieldValue as Double
        }
    }
    return Point(dx, dy, unknownFields)
}

fun PathPoint?.orDefault() = this ?: PathPoint.defaultInstance

private fun PathPoint.protoMergeImpl(plus: pbandk.Message?): PathPoint = (plus as? PathPoint)?.copy(
    coordinates = coordinates?.plus(plus.coordinates) ?: plus.coordinates,
    unknownFields = unknownFields + plus.unknownFields
) ?: this

@Suppress("UNCHECKED_CAST")
private fun PathPoint.Companion.decodeWithImpl(u: pbandk.MessageDecoder): PathPoint {
    var coordinates: Point? = null
    var pressure = 0.0

    val unknownFields = u.readMessage(this) { _fieldNumber, _fieldValue ->
        when (_fieldNumber) {
            1 -> coordinates = _fieldValue as Point
            2 -> pressure = _fieldValue as Double
        }
    }
    return PathPoint(coordinates, pressure, unknownFields)
}

fun Path?.orDefault() = this ?: Path.defaultInstance

private fun Path.protoMergeImpl(plus: pbandk.Message?): Path = (plus as? Path)?.copy(
    color = color?.plus(plus.color) ?: plus.color,
    points = points + plus.points,
    unknownFields = unknownFields + plus.unknownFields
) ?: this

@Suppress("UNCHECKED_CAST")
private fun Path.Companion.decodeWithImpl(u: pbandk.MessageDecoder): Path {
    var color: Color? = null
    var strokeWidth = 0.0
    var points: pbandk.ListWithSize.Builder<PathPoint>? = null

    val unknownFields = u.readMessage(this) { _fieldNumber, _fieldValue ->
        when (_fieldNumber) {
            1 -> color = _fieldValue as Color
            2 -> strokeWidth = _fieldValue as Double
            3 -> points = (points ?: pbandk.ListWithSize.Builder()).apply { this += _fieldValue as Sequence<PathPoint> }
        }
    }
    return Path(color, strokeWidth, pbandk.ListWithSize.Builder.fixed(points), unknownFields)
}

fun MaterialRenderable?.orDefault() = this ?: MaterialRenderable.defaultInstance

private fun MaterialRenderable.protoMergeImpl(plus: pbandk.Message?): MaterialRenderable = (plus as? MaterialRenderable)?.copy(
    topLeftCorner = topLeftCorner?.plus(plus.topLeftCorner) ?: plus.topLeftCorner,
    unknownFields = unknownFields + plus.unknownFields
) ?: this

@Suppress("UNCHECKED_CAST")
private fun MaterialRenderable.Companion.decodeWithImpl(u: pbandk.MessageDecoder): MaterialRenderable {
    var topLeftCorner: Point? = null
    var width = 0.0
    var height = 0.0
    var resourceId = ""
    var pageNumber = 0

    val unknownFields = u.readMessage(this) { _fieldNumber, _fieldValue ->
        when (_fieldNumber) {
            1 -> topLeftCorner = _fieldValue as Point
            2 -> width = _fieldValue as Double
            3 -> height = _fieldValue as Double
            4 -> resourceId = _fieldValue as String
            5 -> pageNumber = _fieldValue as Int
        }
    }
    return MaterialRenderable(topLeftCorner, width, height, resourceId,
        pageNumber, unknownFields)
}

fun Pointer?.orDefault() = this ?: Pointer.defaultInstance

private fun Pointer.protoMergeImpl(plus: pbandk.Message?): Pointer = (plus as? Pointer)?.copy(
    coordinates = coordinates?.plus(plus.coordinates) ?: plus.coordinates,
    color = color?.plus(plus.color) ?: plus.color,
    unknownFields = unknownFields + plus.unknownFields
) ?: this

@Suppress("UNCHECKED_CAST")
private fun Pointer.Companion.decodeWithImpl(u: pbandk.MessageDecoder): Pointer {
    var coordinates: Point? = null
    var color: Color? = null
    var strokeWidth = 0.0
    var type: Pointer.PointerType = Pointer.PointerType.fromValue(0)

    val unknownFields = u.readMessage(this) { _fieldNumber, _fieldValue ->
        when (_fieldNumber) {
            1 -> coordinates = _fieldValue as Point
            2 -> color = _fieldValue as Color
            3 -> strokeWidth = _fieldValue as Double
            4 -> type = _fieldValue as Pointer.PointerType
        }
    }
    return Pointer(coordinates, color, strokeWidth, type, unknownFields)
}

fun Viewport?.orDefault() = this ?: Viewport.defaultInstance

private fun Viewport.protoMergeImpl(plus: pbandk.Message?): Viewport = (plus as? Viewport)?.copy(
    topLeftCorner = topLeftCorner?.plus(plus.topLeftCorner) ?: plus.topLeftCorner,
    unknownFields = unknownFields + plus.unknownFields
) ?: this

@Suppress("UNCHECKED_CAST")
private fun Viewport.Companion.decodeWithImpl(u: pbandk.MessageDecoder): Viewport {
    var topLeftCorner: Point? = null
    var width = 0.0
    var height = 0.0

    val unknownFields = u.readMessage(this) { _fieldNumber, _fieldValue ->
        when (_fieldNumber) {
            1 -> topLeftCorner = _fieldValue as Point
            2 -> width = _fieldValue as Double
            3 -> height = _fieldValue as Double
        }
    }
    return Viewport(topLeftCorner, width, height, unknownFields)
}

fun RenderingInstructions?.orDefault() = this ?: RenderingInstructions.defaultInstance

private fun RenderingInstructions.protoMergeImpl(plus: pbandk.Message?): RenderingInstructions = (plus as? RenderingInstructions)?.copy(
    viewport = viewport?.plus(plus.viewport) ?: plus.viewport,
    backgroundColor = backgroundColor?.plus(plus.backgroundColor) ?: plus.backgroundColor,
    materialRenderables = materialRenderables + plus.materialRenderables,
    paths = paths + plus.paths,
    pointer = pointer?.plus(plus.pointer) ?: plus.pointer,
    unknownFields = unknownFields + plus.unknownFields
) ?: this

@Suppress("UNCHECKED_CAST")
private fun RenderingInstructions.Companion.decodeWithImpl(u: pbandk.MessageDecoder): RenderingInstructions {
    var viewport: Viewport? = null
    var backgroundColor: Color? = null
    var materialRenderables: pbandk.ListWithSize.Builder<MaterialRenderable>? = null
    var paths: pbandk.ListWithSize.Builder<Path>? = null
    var pointer: Pointer? = null

    val unknownFields = u.readMessage(this) { _fieldNumber, _fieldValue ->
        when (_fieldNumber) {
            1 -> viewport = _fieldValue as Viewport
            2 -> backgroundColor = _fieldValue as Color
            3 -> materialRenderables = (materialRenderables ?: pbandk.ListWithSize.Builder()).apply { this += _fieldValue as Sequence<MaterialRenderable> }
            4 -> paths = (paths ?: pbandk.ListWithSize.Builder()).apply { this += _fieldValue as Sequence<Path> }
            5 -> pointer = _fieldValue as Pointer
        }
    }
    return RenderingInstructions(viewport, backgroundColor, pbandk.ListWithSize.Builder.fixed(materialRenderables), pbandk.ListWithSize.Builder.fixed(paths),
        pointer, unknownFields)
}
