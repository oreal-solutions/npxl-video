import pbandk.encodeToByteArray
import kotlin.test.Test


class VideoResourceBuilderTest {
    class Build {
        @Test
        fun shouldBuildTheInstanceWithTheCorrectResourceLength() {
            val expectedResourceHeader = VideoResourceHeader(resourceId = "id", mimeType = "mimeType", dataSectionSize = 0)
            val expectedResourceHeaderSize = expectedResourceHeader.encodeToByteArray().size

            val instance = VideoResourceBuilder()
            instance.setResourceId("id")
            instance.setResourceMimeType("mimeType")
            instance.setResourceData(byteArrayOf())


        }

        @Test
        fun shouldBuildTheInstanceWithTheResourceIdFieldBeingTheLastValueSetWith_setResourceId() {
            val instance = VideoResourceBuilder()
//            instance.setResourceId(2)

            val returnedData = instance.build()


        }

        @Test
        fun shouldBuildTheInstanceWithTheResourceMimeTypeFieldBeingTheLastValueSetWith_setResourceMimeType() {
        }

        class WhenTheResourceDataIsSetWithSetResourceData {
            @Test
            fun shouldBuildTheInstanceWithTheSetResourceData() {
            }

            @Test
            fun shouldBuildTheInstanceWithTheCorrectResourceDataSize(){}
        }

        class WhenTheResourceDataIsSetWithSetResourceDataFromInputStream {
            @Test
            fun shouldBuildTheInstanceWithTheSetResourceData() {
            }

            @Test
            fun shouldBuildTheInstanceWithTheCorrectResourceDataSize(){}
        }
    }

    class BuildToOutputStream {
        @Test
        fun shouldBuildTheInstanceWithTheCorrectResourceLength() {
        }

        @Test
        fun shouldBuildTheInstanceWithTheResourceIdFieldBeingTheLastValueSetWith_setResourceId() {
        }

        @Test
        fun shouldBuildTheInstanceWithTheResourceMimeTypeFieldBeingTheLastValueSetWith_setResourceMimeType() {
        }

        class WhenTheResourceDataIsSetWithSetResourceData {
            @Test
            fun shouldBuildTheInstanceWithTheSetResourceData() {
            }

            @Test
            fun shouldBuildTheInstanceWithTheCorrectResourceDataSize(){}
        }

        class WhenTheResourceDataIsSetWithSetResourceDataFromInputStream {
            @Test
            fun shouldBuildTheInstanceWithTheSetResourceData() {
            }

            @Test
            fun shouldBuildTheInstanceWithTheCorrectResourceDataSize(){}
        }
    }
}