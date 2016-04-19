FROM alpine:3.3

MAINTAINER ymst180 <ymst180@gmail.com>

USER root
ENV TERM xterm

RUN apk update && \
    apk add --no-cache bash curl wget openssh git rsync nano

#RUN apk add --no-cache emacs --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ 
RUN rm -rf /tmp/* /var/cache/apk/*

WORKDIR /root/
CMD ["/bin/bash"]
