FROM alpine:3.3

MAINTAINER ymst180 <ymst180@gmail.com>

USER root
ENV TERM xterm

RUN apk update && \
    apk add bash git openssh rsync nano vim nginx
RUN rm -rf /var/cache/apk/*
