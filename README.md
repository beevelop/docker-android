[![Travis](https://shields.lovato.com/travis/lovato/docker-android.svg?style=flat-square)](https://travis-ci.org/lovato/docker-android)
[![Docker Pulls](https://shields.lovato.com/docker/pulls/lovato/android.svg?style=flat-square)](https://links.lovato.com/d-android)
[![Layers](https://shields.lovato.com/docker/image/layers/lovato/android/latest.svg?style=flat-square)](https://links.lovato.com/d-android)
[![Size](https://shields.lovato.com/docker/image/size/lovato/android/latest.svg?style=flat-square)](https://links.lovato.com/d-android)
[![GitHub release](https://shields.lovato.com/github/release/lovato/docker-android.svg?style=flat-square)](https://github.com/lovato/docker-android/releases)
![Badges](https://shields.lovato.com/badge/badges-7-brightgreen.svg?style=flat-square)
[![lovato](https://links.lovato.com/honey-badge)](https://beevelop.com)

# Android 8
### forked from [beevelop/android](https://github.com/beevelop/docker-android)
- Ant :: Apache Ant(TM) version 1.9.6 compiled on July 8 2015
- Maven :: Apache Maven 3.3.9
- Java :: Java(TM) SE Runtime Environment (build 1.8.0_161-b12)
- Gradle :: v2.10 (Groovy 2.4.5)
- Android SDK Manager :: v26.1.1
    + APIs: android-10,android-15,android-16,android-17,android-18,android-19,android-20,android-21,android-22,android-23,android-24,android-25,android-26,android-27
    + Build-Tools: 27.0.3

<!-- ----
## Tagging scheme
- `v${TOOLS_VERSION}-${BUILD_TOOLS_VERSION}-${HIGHEST_ANDROID_SDK_VERSION}`
- e.g. `v25.2.5-27.0.0-26`
---- -->

### Pull from Docker Hub
```
docker pull lovato/android:latest
```

### Build from GitHub
```
docker build -t lovato/android github.com/lovato/docker-android
```

### Run image
```
docker run -it lovato/android /bin/bash
```

### Use as base image
```Dockerfile
FROM lovato/android:latest
```
