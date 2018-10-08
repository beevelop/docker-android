FROM beevelop/java

LABEL maintainer="maglovato@gmail.com"

ENV ANDROID_SDK_URL="https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip" \
    ANDROID_BUILD_TOOLS_VERSION=28.0.3 \
    ANDROID_APIS="android-19,android-20,android-21,android-22,android-23,android-24,android-25,android-26,android-27,android-28" \
    ANT_HOME="/usr/share/ant" \
    MAVEN_HOME="/usr/share/maven" \
    GRADLE_HOME="/usr/share/gradle" \
    ANDROID_HOME="/opt/android"

ENV PATH $PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/$ANDROID_BUILD_TOOLS_VERSION:$ANT_HOME/bin:$MAVEN_HOME/bin:$GRADLE_HOME/bin

WORKDIR /opt

RUN dpkg --add-architecture i386 && \
    apt-get -qq update && \
    apt-get -qq install -y wget curl maven ant gradle libncurses5:i386 libstdc++6:i386 zlib1g:i386 && \
    mkdir android && cd android && \
    wget -nv -O tools.zip ${ANDROID_SDK_URL} && \
    unzip tools.zip && rm tools.zip && \
    yes | /opt/android/tools/bin/sdkmanager --licenses && \
    # /opt/android/tools/bin/sdkmanager build-tools;${ANDROID_BUILD_TOOLS_VERSION} platforms;${ANDROID_APIS} && \
    android update sdk --use-sdk-wrapper -a -u -t platform-tools,${ANDROID_APIS},build-tools-${ANDROID_BUILD_TOOLS_VERSION} && \
    /opt/android/tools/bin/sdkmanager --update && \
    chmod a+x -R $ANDROID_HOME && \
    chown -R root:root $ANDROID_HOME && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get autoremove -y && \
    apt-get clean
