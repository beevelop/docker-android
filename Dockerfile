FROM beevelop/android

MAINTAINER Maik Hummel <m@ikhummel.com>

ENV GOOGLE_APIS="addon-google_apis-google-25,addon-google_apis-google-24,addon-google_apis-google-23,addon-google_apis-google-22,addon-google_apis-google-21,addon-google_apis-google-19,addon-google_apis-google-18,addon-google_apis-google-17,addon-google_apis-google-16,addon-google_apis-google-15,addon-google_apis-google-10"

RUN echo y | android update sdk -a -u -t ${GOOGLE_APIS}
