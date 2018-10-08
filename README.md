# Android 8

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Build Status](https://travis-ci.org/lovato/docker-android.svg?branch=master)](https://travis-ci.org/lovato/docker-android)

## forked from [beevelop/android](https://github.com/beevelop/docker-android)

- Ant :: Apache Ant(TM) version 1.9.6 compiled on July 8 2015
- Maven :: Apache Maven 3.3.9
- Java :: Java(TM) SE Runtime Environment (build 1.8.0_161-b12)
- Gradle :: v2.10 (Groovy 2.4.5)
- Android SDK Manager :: v26.1.1
  - APIs: android-19,android-20,android-21,android-22,android-23,android-24,android-25,android-26,android-27,android-28
  - Build-Tools: 28.0.3

## Pull from Docker Hub

```bash
docker pull lovato/android:latest
```

## Build from GitHub

```bash
docker build -t lovato/android github.com/lovato/docker-android
```

## Run image

```bash
docker run -it lovato/android /bin/bash
```

## Use as base image

```Dockerfile
FROM lovato/android:latest
```
