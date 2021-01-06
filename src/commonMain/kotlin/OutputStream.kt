interface OutputStream {
    fun close()
    suspend fun writeBytes(bytes: ByteArray)
}