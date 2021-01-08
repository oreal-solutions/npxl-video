import kotlin.time.Duration
import kotlin.time.ExperimentalTime

interface VideoReader {
    suspend fun majorRevision(): Int

    suspend fun  videoHeader(): VideoHeader

    @ExperimentalTime
    suspend fun videoDuration(): Duration

    @ExperimentalTime
    suspend fun getMediaPagesInRange(start: Duration, length: Duration): Array<ReadableMediaPage>

    suspend fun getVideoResource(resourceId: String): ReadableVideoResource
}