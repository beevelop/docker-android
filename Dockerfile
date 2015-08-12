FROM beevelop/java
MAINTAINER Maik Hummel <m@ikhummel.com>

# Build-Variables
ENV ANDROID_SDK_FILE android-sdk_r24.3.3-linux.tgz
ENV ANDROID_SDK_URL https://dl.google.com/android/${ANDROID_SDK_FILE}
ENV ANDROID_BUILD_TOOLS_VERSION 22.0.1
ENV ANDROID_APIS android-10,android-15,android-16,android-17,android-18,android-19,android-20,android-21,android-22

# Set Environment Variables
ENV ANT_HOME /usr/share/ant
ENV MAVEN_HOME /usr/share/maven
ENV GRADLE_HOME /usr/share/gradle
ENV ANDROID_HOME /opt/android-sdk-linux
ENV PATH $PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/$ANDROID_BUILD_TOOLS_VERSION
ENV PATH $PATH:$ANT_HOME/bin
ENV PATH $PATH:$MAVEN_HOME/bin
ENV PATH $PATH:$GRADLE_HOME/bin

WORKDIR "/opt"

RUN apt-get update -y
RUN apt-get install -y curl

# install 32-bit dependencies require by the android sdk
RUN dpkg --add-architecture i386
RUN apt-get update -y
RUN apt-get install -y libncurses5:i386 libstdc++6:i386 zlib1g:i386

# install Ant
RUN apt-get install -y ant

# install Gradle
RUN apt-get install -y gradle

# Installs Android SDK
RUN curl -O ${ANDROID_SDK_URL}
RUN tar xf ${ANDROID_SDK_FILE}
RUN echo y | android update sdk -a -u -t platform-tools,${ANDROID_APIS},build-tools-${ANDROID_BUILD_TOOLS_VERSION}

# Clean up
RUN rm ${ANDROID_SDK_FILE}
RUN apt-get autoremove -y
RUN apt-get clean