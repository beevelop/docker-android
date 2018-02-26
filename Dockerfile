FROM beevelop/java

MAINTAINER Maik Hummel <m@ikhummel.com>

ENV ANDROID_SDK_URL="https://dl.google.com/android/repository/tools_r25.2.5-linux.zip" \
    ANDROID_BUILD_TOOLS_VERSION=27.0.3 \
    ANT_HOME="/usr/share/ant" \
    MAVEN_HOME="/usr/share/maven" \
    GRADLE_HOME="/usr/share/gradle" \
    ANDROID_HOME="/opt/android"

ENV PATH $PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/$ANDROID_BUILD_TOOLS_VERSION:$ANT_HOME/bin:$MAVEN_HOME/bin:$GRADLE_HOME/bin

WORKDIR /opt

RUN dpkg --add-architecture i386 && \
    apt-get -qq update && \
    apt-get -qq install -y wget curl maven ant gradle libncurses5:i386 libstdc++6:i386 zlib1g:i386

    # Installs Android SDK
RUN mkdir android && cd android && \
    wget -O tools.zip ${ANDROID_SDK_URL} && \
    unzip tools.zip && rm tools.zip

RUN mkdir /root/.android && touch /root/.android/repositories.cfg && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platform-tools" "build-tools;${ANDROID_BUILD_TOOLS_VERSION}" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-10" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-15" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-16" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-17" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-18" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-19" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-20" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-21" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-22" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-23" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-24" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-25" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-26" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager "platforms;android-27"

RUN chmod a+x -R $ANDROID_HOME && \
    chown -R root:root $ANDROID_HOME && \
    rm -rf /opt/android/licenses && \
    # Clean up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get autoremove -y && \
    apt-get clean
