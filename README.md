# npxl-video

The beginning of an e-learning revolution

## Generating the kotlin sources from the proto file

This should be done only when [npxl_video.proto](docs/npxl_video.proto) is modified.

Do the following to generate the kotlin sources from [npxl_video.proto](docs/npxl_video.proto):

1. Have the [latest](https://github.com/google/protobuf/releases/latest) version of protoc installed and in your PATH variable
2. Download [protoc-gen-kotlin](https://github.com/streem/pbandk) source
3. Build _protoc-gen-kotlin_ -> `./gradlew :protoc-gen-kotlin:protoc-gen-kotlin-jvm:installDist`
4. Get back to this repo and generate the kotlin code with:

```bash
protoc \
    --kotlin_out=lib/src/commonMain/kotlin \
    --plugin=protoc-gen-kotlin=/path/to/pbandk/protoc-gen-kotlin/jvm/build/install/protoc-gen-kotlin/bin/protoc-gen-kotlin.bat \
    docs/npxl_video.proto
```

These instructions are assuming you're on a Windows machine. Please visit [protoc-gen-kotlin on github](https://github.com/streem/pbandk) for more details.
