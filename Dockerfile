FROM beevelop/java
MAINTAINER Maik Hummel <m@ikhummel.com>

# Build-Variables
ENV ANDROID_SDK_FILE android-sdk_r24.3.4-linux.tgz
ENV ANDROID_SDK_URL https://dl.google.com/android/${ANDROID_SDK_FILE}
ENV ANDROID_BUILD_TOOLS_VERSION 23.0.1
ENV ANDROID_APIS android-10,android-15,android-16,android-17,android-18,android-19,android-20,android-21,android-22,android-23

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

RUN apt-get update -y && \
    # <3 curl
    apt-get install -y curl && \
    
    # install 32-bit dependencies require by the android sdk
    dpkg --add-architecture i386 && \
    apt-get update -y && \
    apt-get install -y libncurses5:i386 libstdc++6:i386 zlib1g:i386 && \

    # install Ant and Gradle
    apt-get install -y ant gradle && \

    # Installs Android SDK
    curl -sL ${ANDROID_SDK_URL} | tar xz -C . && \
    echo y | android update sdk -a -u -t platform-tools,${ANDROID_APIS},build-tools-${ANDROID_BUILD_TOOLS_VERSION} && \

    # Clean up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get autoremove -y && \
    apt-get clean
