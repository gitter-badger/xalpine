FROM alpine:3.3

MAINTAINER ymst180 <ymst180@gmail.com>

USER root
ENV TERM xterm

RUN apk update && \
    apk add --no-cache bash curl wget openssh nano vim git rsync
RUN rm -rf /tmp/* /var/cache/apk/*
