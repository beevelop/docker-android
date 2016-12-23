[![Travis](https://shields.beevelop.com/travis/beevelop/docker-android.svg?style=flat-square)](https://travis-ci.org/beevelop/docker-android)
[![Pulls](https://shields.beevelop.com/docker/pulls/beevelop/android.svg?style=flat-square)](https://links.beevelop.com/d-android)
[![Layers](https://shields.beevelop.com/docker/image/layers/beevelop/android/gapis.svg?style=flat-square)](https://links.beevelop.com/d-android)
[![Size](https://shields.beevelop.com/docker/image/size/beevelop/android/gapis.svg?style=flat-square)](https://links.beevelop.com/d-android)
[![Release](https://shields.beevelop.com/github/release/beevelop/docker-android.svg?style=flat-square)](https://github.com/beevelop/docker-android/releases)
![Badges](https://shields.beevelop.com/badge/badges-7-brightgreen.svg?style=flat-square)
[![Beevelop](https://links.beevelop.com/honey-badge)](https://beevelop.com)

# Android 6 with Google APIs
### based on [beevelop/java](https://github.com/beevelop/docker-java)
- Ant 1.9.6
- Maven 3.3.3
- Gradle 2.5 (Groovy 2.4.3)
- Android 24.4.1
    + APIs: android-10,android-15,android-16,android-17,android-18,android-19,android-20,android-21,android-22,android-23
    + Build-Tools: 23.0.3

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
