plugins {
    kotlin("multiplatform") version "1.4.10"
    application
}

group = "oreal-npxl"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
    jcenter()
}

val pbandkVersion = "0.9.1"

kotlin {
    jvm {
        compilations.all {
            kotlinOptions.jvmTarget = "1.8"
        }
        testRuns["test"].executionTask.configure {
            useJUnitPlatform()
        }
        withJava()
    }
    js {
        useCommonJs()
        browser {}
        nodejs {}
    }

    // TODO(Batandwa) Enable Kotlin Native for Objective C target
//    val hostOs = System.getProperty("os.name")
//    val isMingwX64 = hostOs.startsWith("Windows")
//    val nativeTarget = when {
//        hostOs == "Mac OS X" -> macosX64("native")
//        hostOs == "Linux" -> linuxX64("native")
//        isMingwX64 -> mingwX64("native")
//        else -> throw GradleException("Host OS is not supported in Kotlin/Native.")
//    }


    sourceSets {
        val commonMain by getting {
            dependencies {
                implementation("pro.streem.pbandk:pbandk-runtime:$pbandkVersion")
                implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.4.2")
            }
        }
        val commonTest by getting {
            dependencies {
                implementation(kotlin("test-common"))
                implementation(kotlin("test-annotations-common"))
            }
        }
        val jvmMain by getting {
            dependencies {
                implementation("pro.streem.pbandk:pbandk-runtime-jvm:$pbandkVersion")
            }
        }
        val jvmTest by getting {
            dependencies {
                implementation(kotlin("test-junit5"))
                implementation("org.junit.jupiter:junit-jupiter-api:5.6.0")
                runtimeOnly("org.junit.jupiter:junit-jupiter-engine:5.6.0")
            }
        }
        val jsMain by getting {
            dependencies {
                implementation("pro.streem.pbandk:pbandk-runtime-js:$pbandkVersion")
                implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core-js:1.4.2")

                // Adding the protobufjs dependency here used by pdbank-kotlin solves
                // the npm error 'module protobufjs/light' not found.
                implementation(npm("protobufjs", "~6.10.2"))
            }
        }
        val jsTest by getting {
            dependencies {
                implementation(kotlin("test-js"))
            }
        }
//        val nativeMain by getting {
//            dependencies {
//                implementation("pro.streem.pbandk:pbandk-runtime-native:$pbandkVersion")
//            }
//        }
//        val nativeTest by getting
    }
}

application {
    mainClassName = "MainKt"
}

tasks.withType<org.jetbrains.kotlin.gradle.tasks.KotlinCompile>().configureEach {
    kotlinOptions.freeCompilerArgs += "-Xopt-in=kotlin.RequiresOptIn"
}