FROM alpine:3.3

MAINTAINER ymst180 <ymst180@gmail.com>

USER root
ENV TERM xterm

RUN apk update && \
    apk add --no-cache bash curl wget openssh git rsync nano
RUN rm -rf /tmp/* /var/cache/apk/*

WORKDIR /
