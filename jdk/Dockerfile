FROM ymst180/xalpine:latest

MAINTAINER ymst180 <ymst180@gmail.com>

RUN apk --update add curl ca-certificates tar sqlite icu bash && \
    curl -Ls https://circle-artifacts.com/gh/andyshinn/alpine-pkg-glibc/6/artifacts/0/home/ubuntu/alpine-pkg-glibc/packages/x86_64/glibc-2.21-r2.apk > /tmp/glibc-2.21-r2.apk && \
    apk add --allow-untrusted /tmp/glibc-2.21-r2.apk

ENV JAVA_INSTALL=/usr/java
ENV JAVA_VERSION_MAJOR=8
ENV JAVA_VERSION_MINOR=91
ENV JAVA_VERSION_BUILD=14
ENV JAVA_OS=linux-x64

RUN mkdir -p ${JAVA_INSTALL} 
RUN curl -jksSLH "Cookie: oraclelicense=accept-securebackup-cookie"\
  http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_BUILD}/jdk-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-${JAVA_OS}.tar.gz \
 | tar -xzf - -C ${JAVA_INSTALL} 
RUN ln -s /usr/java/jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR} /usr/java/default
ENV JAVA_HOME=/usr/java/default
ENV AS_HOME=/usr/java/default
ENV PATH=$PATH:$JAVA_HOME/bin
RUN rm -rf $JAVA_HOME/*src.zip \
 $JAVA_HOME/lib/missioncontrol \
 $JAVA_HOME/lib/visualvm \
 $JAVA_HOME/lib/*javafx* \
 $JAVA_HOME/jre/lib/plugin.jar \
 $JAVA_HOME/jre/lib/ext/jfxrt.jar \
 $JAVA_HOME/jre/bin/javaws \
 $JAVA_HOME/jre/lib/javaws.jar \
 $JAVA_HOME/jre/lib/desktop \
 $JAVA_HOME/jre/plugin \
 $JAVA_HOME/jre/lib/deploy* \
 $JAVA_HOME/jre/lib/*javafx* \
 $JAVA_HOME/jre/lib/*jfx* \
 $JAVA_HOME/jre/lib/amd64/libdecora_sse.so \
 $JAVA_HOME/jre/lib/amd64/libprism_*.so \
 $JAVA_HOME/jre/lib/amd64/libfxplugins.so \
 $JAVA_HOME/jre/lib/amd64/libglass.so \
 $JAVA_HOME/jre/lib/amd64/libgstreamer-lite.so \
 $JAVA_HOME/jre/lib/amd64/libjavafx*.so \
 $JAVA_HOME/jre/lib/amd64/libjfx*.so i 
RUN	 rm -rf /tmp/* /var/cache/apk/* \
