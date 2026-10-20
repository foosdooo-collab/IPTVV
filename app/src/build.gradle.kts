plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
}

android {
    namespace = "org.example.kivyapp"
    compileSdk = 35
    defaultConfig {
        applicationId = "org.example.kivyapp"
        minSdk = 23
        targetSdk = 28
        versionCode = 1
        versionName = "1.0"
        ndk { abiFilters += listOf("arm64-v8a", "armeabi-v7a") }
    }
}
