# No Pixels Video (npxl video)

This library is the reference implementation of the [npxl video format](docs/introduction.md). It serves only the
purpose of reading and writing npxl files. It does not implement the capability to play the video format on any
platform.

The npxl video format uses [opus](https://opus-codec.org/) as its audio codec. This library, however, does not come with
libopus classes. It is up to the user of the library to do the encoding and decoding of audio. The LytOwl team will
provide a simple libopus library specifically for use with this library in the near future.

## Targets

Through Kotlin multiplatform, these are the platforms this library is targeting.

- [ ] Kotlin/JVM
- [ ] Kotlin/Native (Objective-C)
- [ ] kotlin/JS

## Understanding this library

![Library Architecture](docs/assets/classes.png)

## Generating the kotlin sources from the proto file

This should be done only when [npxl_video.proto](docs/npxl_video.proto) is modified.

Do the following to generate the kotlin sources from [npxl_video.proto](docs/npxl_video.proto):

1. Have the [latest](https://github.com/google/protobuf/releases/latest) version of protoc installed and in your PATH
   variable
2. Download [protoc-gen-kotlin](https://github.com/streem/pbandk) source
3. Build _protoc-gen-kotlin_ -> `./gradlew :protoc-gen-kotlin:protoc-gen-kotlin-jvm:installDist`
4. Get back to this repo and generate the kotlin code with:

```bash
protoc \
    --kotlin_out=src/commonMain/kotlin \
    --plugin=protoc-gen-kotlin=/path/to/pbandk/protoc-gen-kotlin/jvm/build/install/protoc-gen-kotlin/bin/protoc-gen-kotlin.bat \
    docs/npxl_video.proto
```

These instructions are assuming you're on a Windows machine. Please
visit [protoc-gen-kotlin on github](https://github.com/streem/pbandk) for more details.

## Unit testing

All the code for this library is in the commonMain source set. This section, therefore, documents how to add and run
unit tests for code in the commonMain source set. The process should be similar for the other sourceSets.

### Adding unit tests

Unit tests should be added to the `src/commonTest/kotlin` folder.

Example unit test, `src/commonTest/kotlin/DemoTest.kt`:

```kotlin
import kotlin.test.Test
import kotlin.test.assertEquals

class DemoTest {
    @Test
    fun testAddReturnsCorrectSum() {
        val sum = add(4, 3)
        assertEquals(7, sum)
    }
}
```

### Running unit tests from the command line

To run the unit test run `gradlew test` from your terminal.

### Running the unit tests from IntelliJ IDEA

This is probably the easiest way to run the unit tests. Once the IDE has fully loaded the project, you should see green
play buttons next to test classes and methods as in the following image. Clicking on any of them will run that test
class or method.

![Running the unit tests from IntelliJ IDEA](docs/assets/unit_testing_1.png)

## Building

TODO(LytOwl team)