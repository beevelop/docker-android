![GitHub Workflow Status](https://img.shields.io/github/workflow/status/beevelop/docker-android/Docker%20Image?style=for-the-badge)
![Docker Pulls](https://img.shields.io/docker/pulls/beevelop/android.svg?style=for-the-badge)
![Docker Stars](https://img.shields.io/docker/stars/beevelop/android?style=for-the-badge)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/beevelop/android/latest?style=for-the-badge)
![License](https://img.shields.io/github/license/beevelop/docker-android?style=for-the-badge)
[![GitHub release](https://img.shields.io/github/release/beevelop/docker-android.svg?style=for-the-badge)](https://github.com/beevelop/docker-android/releases)
![GitHub Release Date](https://img.shields.io/github/release-date/beevelop/docker-android?style=for-the-badge)
![CalVer](https://img.shields.io/badge/CalVer-YYYY.MM.MICRO-22bfda.svg?style=for-the-badge)
[![Beevelop](https://img.shields.io/badge/-%20Made%20with%20%F0%9F%8D%AF%20by%20%F0%9F%90%9Dvelop-blue.svg?style=for-the-badge)](https://beevelop.com)

# Android 11.0
### based on [beevelop/java](https://github.com/beevelop/docker-java)
- Java 8
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
