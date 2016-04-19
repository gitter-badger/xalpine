FROM ymst180/xalpine:latest

MAINTAINER ymst180 <ymst180@gmail.com>

RUN apk add --no-cache nodejs unzip
WORKDIR /root/

RUN wget https://ghost.org/zip/ghost-latest.zip
RUN unzip ghost-latest.zip -d /root/ghost

#Add OriginalTheme
WORKDIR /root/ghost/content/themes/
RUN git clone https://github.com/ymst180/RiskyGhost.git

WORKDIR /root/ghost/
RUN npm install --production

ENV NODE_ENV production
RUN sed "s/127.0.0.1/0.0.0.0/" config.example.js
ENV DOMAIN localhost
RUN sed "s/my-ghost-blog.com/${DOMAIN}/" config.example.js > config.js
EXPOSE 2368

CMD ["npm","start"]
