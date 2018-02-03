[![Travis](https://shields.beevelop.com/travis/beevelop/docker-android.svg?style=flat-square)](https://travis-ci.org/beevelop/docker-android)
[![Docker Pulls](https://shields.beevelop.com/docker/pulls/beevelop/android.svg?style=flat-square)](https://links.beevelop.com/d-android)
[![Layers](https://shields.beevelop.com/docker/image/layers/beevelop/android/latest.svg?style=flat-square)](https://links.beevelop.com/d-android)
[![Size](https://shields.beevelop.com/docker/image/size/beevelop/android/latest.svg?style=flat-square)](https://links.beevelop.com/d-android)
[![GitHub release](https://shields.beevelop.com/github/release/beevelop/docker-android.svg?style=flat-square)](https://github.com/beevelop/docker-android/releases)
![Badges](https://shields.beevelop.com/badge/badges-7-brightgreen.svg?style=flat-square)
[![Beevelop](https://links.beevelop.com/honey-badge)](https://beevelop.com)

# Android 8 (SDK Tools 25.2)
### based on [beevelop/java](https://github.com/beevelop/docker-java)
- Ant 1.9.6
- Maven 3.3.9
- Java 1.8.0_111
- Gradle 2.10 (Groovy 2.4.5)
- Android SDK `25.2.5`
    + APIs: `android-10, android-15 to android-27`
    + Build-Tools: `27.0.3`

----
## Tagging scheme
- `v${TOOLS_VERSION}-${BUILD_TOOLS_VERSION}-${HIGHEST_ANDROID_SDK_VERSION}`
- e.g. `v25.2.5-27.0.0-26`
----
### Pull from Docker Hub
```
docker pull beevelop/android:latest
```

### Build from GitHub
```
docker build -t beevelop/android github.com/beevelop/docker-android
```

### Run image
```
docker run -it beevelop/android bash
```

### Use as base image
```Dockerfile
FROM beevelop/android:latest
```

----

![One does not simply use latest](https://i.imgflip.com/1fgwxr.jpg)
