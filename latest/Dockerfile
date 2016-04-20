FROM alpine:3.3

MAINTAINER ymst180 <ymst180@gmail.com>

USER root
WORKDIR /
ENV TERM xterm

RUN apk update && \
	apk add bash curl wget openssh git rsync nano
#RUN apk add --no-cache nginx vim
#RUN apk add --no-cache emacs --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ 

RUN rm -rf /tmp/* /var/cache/apk/*

COPY override/ /
RUN chmod +x /root/start.sh
RUN /root/start.sh

CMD ["/bin/bash"]
