[![Docker Pulls](https://shields.beevelop.com/docker/pulls/beevelop/android.svg?style=flat-square)](https://links.beevelop.com/d-android)
[![Layers](https://shields.beevelop.com/docker/image/layers/beevelop/android/latest.svg?style=flat-square)](https://links.beevelop.com/d-android)
[![Size](https://shields.beevelop.com/docker/image/size/beevelop/android/latest.svg?style=flat-square)](https://links.beevelop.com/d-android)
[![GitHub release](https://shields.beevelop.com/github/release/beevelop/docker-android.svg?style=flat-square)](https://github.com/beevelop/docker-android/releases)
![Badges](https://shields.beevelop.com/badge/badges-7-brightgreen.svg?style=flat-square)
[![Beevelop](https://links.beevelop.com/honey-badge)](https://beevelop.com)

# Android 11.0
### based on [beevelop/java](https://github.com/beevelop/docker-java)
- Java 11
- Gradle 4.4.1 (Groovy: 2.4.16)
- Apache Maven 3.6.3
- Ant 1.10.7

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
