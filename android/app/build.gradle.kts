android {
    namespace = "com.example.flutter_mini_apps"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973" // 최신 버전으로 명확히 지정

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.flutter_mini_apps"
        minSdk = 23 // 기존 flutter.minSdkVersion → 23으로 직접 변경
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}
