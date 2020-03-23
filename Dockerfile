FROM beevelop/java

ARG BUILD_DATE
ARG BUILD_VERSION
ARG VCS_REF

LABEL maintainer="Maik Hummel <hi@beevelop.com>" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.version=$BUILD_VERSION \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0" \
      org.label-schema.vcs-url="https://github.com/beevelop/docker-android.git" \
      org.label-schema.name="beevelop/android" \
      org.label-schema.vendor="Maik Hummel (beevelop)" \
      org.label-schema.description="Simple Android Docker image" \
      org.label-schema.url="https://beevelop.com/" \
      org.label-schema.license="MIT" \
      org.opencontainers.image.title="beevelop/android" \
      org.opencontainers.image.description="Simple Android Docker image" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.authors="Maik Hummel (beevelop)" \
      org.opencontainers.image.vendor="Maik Hummel (beevelop)" \
      org.opencontainers.image.url="https://github.com/beevelop/docker-android" \
      org.opencontainers.image.documentation="https://github.com/beevelop/docker-android/blob/master/README.md" \
      org.opencontainers.image.source="https://github.com/beevelop/docker-android.git"

# https://developer.android.com/studio/#downloads
ENV ANDROID_SDK_URL="https://dl.google.com/android/repository/commandlinetools-linux-6200805_latest.zip" \
    ANDROID_BUILD_TOOLS_VERSION=29.0.3 \
    ANT_HOME="/usr/share/ant" \
    MAVEN_HOME="/usr/share/maven" \
    GRADLE_HOME="/usr/share/gradle" \
    ANDROID_HOME="/opt/android"

ENV PATH $PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/build-tools/$ANDROID_BUILD_TOOLS_VERSION:$ANT_HOME/bin:$MAVEN_HOME/bin:$GRADLE_HOME/bin

WORKDIR /opt

RUN apt-get -qq update && \
    apt-get -qq install -y wget curl maven ant gradle

# Installs Android SDK
RUN mkdir android && cd android && \
    wget -O tools.zip ${ANDROID_SDK_URL} && \
    unzip tools.zip && rm tools.zip

RUN mkdir /root/.android && touch /root/.android/repositories.cfg && \
    while true; do echo 'y'; sleep 2; done | sdkmanager --sdk_root=${ANDROID_HOME} "platform-tools" "build-tools;${ANDROID_BUILD_TOOLS_VERSION}" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager --sdk_root=${ANDROID_HOME} "platforms;android-10" "platforms;android-15" "platforms;android-16" "platforms;android-17" "platforms;android-18" "platforms;android-19" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager --sdk_root=${ANDROID_HOME} "platforms;android-20" "platforms;android-21" "platforms;android-22" "platforms;android-23" "platforms;android-24" "platforms;android-25" "platforms;android-26" "platforms;android-27" && \
    while true; do echo 'y'; sleep 2; done | sdkmanager --sdk_root=${ANDROID_HOME} "platforms;android-28" "platforms;android-29"

RUN while true; do echo 'y'; sleep 2; done | sdkmanager --sdk_root=${ANDROID_HOME} "extras;android;m2repository" "extras;google;google_play_services" "extras;google;instantapps" "extras;google;m2repository"
RUN while true; do echo 'y'; sleep 2; done | sdkmanager --sdk_root=${ANDROID_HOME} "add-ons;addon-google_apis-google-15" "add-ons;addon-google_apis-google-16" "add-ons;addon-google_apis-google-17" "add-ons;addon-google_apis-google-18" "add-ons;addon-google_apis-google-19" "add-ons;addon-google_apis-google-21" "add-ons;addon-google_apis-google-22" "add-ons;addon-google_apis-google-23" "add-ons;addon-google_apis-google-24"

RUN chmod a+x -R $ANDROID_HOME && \
    chown -R root:root $ANDROID_HOME && \
    rm -rf /opt/android/licenses && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get autoremove -y && \
    apt-get clean
