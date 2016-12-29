FROM beevelop/android:gapis

MAINTAINER Maik Hummel <m@ikhummel.com>

ENV ANDROID_EXTRAS="extra-android-m2repository,extra-google-m2repository,extra-google-play_billing,extra-google-market_licensing,extra-google-market_apk_expansion,extra-google-google_play_services,extra-google-webdriver"

RUN echo y | android update sdk -a -u -t ${ANDROID_EXTRAS}
