interface RandomAccessInputStream {
    /***
     * Reads data from the input stream.
     *
     * [offset] is the number of bytes to skip before starting the read.
     *
     * An implementation can return less than [numberOfBytesToRead] bytes,
     * but should never return more than [numberOfBytesToRead] bytes.
     */
    suspend fun readBytes(offset: Int, numberOfBytesToRead: Int): ByteArray

    fun close()
}