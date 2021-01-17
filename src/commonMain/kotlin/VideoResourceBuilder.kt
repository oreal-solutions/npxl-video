class VideoResourceBuilder: SectionBuilder {
    override fun build(): ByteArray{
        TODO("Not yet implemented")
    }

    override suspend fun buildToOutputStream(out: OutputStream) {
        TODO("Not yet implemented")
    }

    fun setResourceId(id: String){}

    fun setResourceMimeType(mimeType: String){}

    fun setResourceData(data: ByteArray){}

    fun setResourceDataFromInputStream(resourceDataInputStream: RandomAccessInputStream){}
}