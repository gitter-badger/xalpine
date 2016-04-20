FROM ymst180/xalpine:latest

MAINTAINER ymst180 ymst180@gmail.com

ENV NGINX_VERSION 1.9.7

RUN apk add --update pcre-dev openssl-dev \
  && apk add --virtual build-dependencies build-base curl \
  && curl -SLO http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz \
  && tar xzvf nginx-${NGINX_VERSION}.tar.gz \
  && cd nginx-${NGINX_VERSION} \
  && ./configure \
       --with-http_ssl_module \
       --with-http_gzip_static_module \
       --prefix=/usr/share/nginx \
       --sbin-path=/usr/local/sbin/nginx \
       --conf-path=/etc/nginx/nginx.conf \
       --pid-path=/var/run/nginx.pid \
       --http-log-path=/var/log/nginx/access.log \
       --error-log-path=/var/log/nginx/error.log \
  && make \
  && make install \
  && ln -sf /dev/stdout /var/log/nginx/access.log \
  && ln -sf /dev/stderr /var/log/nginx/error.log \
  && cd / \
  && apk del build-dependencies \
  && rm -rf \
       nginx-${NGINX_VERSION} \
       nginx-${NGINX_VERSION}.tar.gz \
       /var/cache/apk/*

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY www /var/www

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
