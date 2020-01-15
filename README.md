
# Android 26-28 (SDK 29.X)
### based on [beevelop/java](https://github.com/beevelop/docker-java)
- Ant 1.9.6
- Maven 3.3.9
- Java 1.8.0_111
- Gradle 2.10 (Groovy 2.4.5)
- Android SDK
    + APIs: android-26,android-27,android-28
    + Build-Tools: 29.0.0

----
### Pull from Docker Hub
```
docker pull leemeador/android:latest
```

### Build from GitHub
```
docker build -t leemeador/android github.com/leemeador/docker-android
```

### Run image
```
docker run -it leemeador/android bash
```

### Use as base image
```Dockerfile
FROM leemeador/android:latest
```

----

![One does not simply use latest](https://i.imgflip.com/1fgwxr.jpg)
