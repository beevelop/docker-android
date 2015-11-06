[![Travis](https://img.shields.io/travis/beevelop/docker-android.svg?style=flat-square)](https://travis-ci.org/beevelop/docker-android)
[![Docker Pulls](https://img.shields.io/docker/pulls/beevelop/android.svg?style=flat-square)](https://links.beevelop.com/d-android)
[![ImageLayer](https://badge.imagelayers.io/beevelop/android:latest.svg)](https://imagelayers.io/?images=beevelop/android:latest)
[![Beevelop](https://links.beevelop.com/honey-badge)](https://beevelop.com)

# Android 6
### based on [beevelop/java](https://github.com/beevelop/docker-java)
- Ant 1.9.6
- Maven 3.3.3
- Gradle 2.5 (Groovy 2.4.3)
- Android 24.4.1
    + APIs: android-10,android-15,android-16,android-17,android-18,android-19,android-20,android-21,android-22,android-23
    + Build-Tools: 23.0.2
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
