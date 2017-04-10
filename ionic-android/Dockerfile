# iconic with android
FROM node

MAINTAINER Marc Despland <marc.despland@orange.com>

RUN groupadd --gid 1001 default && useradd --gid 1001 --uid 1001 -m default

RUN sed -i 's/deb /deb [arch=amd64,i386] /' /etc/apt/sources.list
RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install -y openjdk-7-jdk libc6:i386 libstdc++6:i386 zlib1g:i386

WORKDIR /opt
RUN wget http://dl.google.com/android/android-sdk_r24.2-linux.tgz
RUN tar -xvf android-sdk_r24.2-linux.tgz
COPY install_sdk.js android-sdk-linux/tools/
RUN cd android-sdk-linux/tools && node install_sdk.js
ENV PATH="${PATH}:/opt/android-sdk-linux/platform-tools:/opt/android-sdk-linux/tools:/opt/android-sdk-linux/build-tools/23.0.1/""
ENV ANDROID_HOME=/opt/android-sdk-linux

RUN npm install -g ionic cordova


WORKDIR /app

USER 1001

CMD ["ionic", "build", "android"]