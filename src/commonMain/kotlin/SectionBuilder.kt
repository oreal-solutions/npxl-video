interface SectionBuilder {
    /**
     * Serialises the object to its binary representation as per the documentation
     * for the object in npxl_video.proto.
     */
    fun build(): ByteArray

    /**
     * Does the same thing as [build] but instead of returning the binary
     * data it writes it to the given [OutputStream].
     */
    suspend fun buildToOutputStream(out: OutputStream)
}
