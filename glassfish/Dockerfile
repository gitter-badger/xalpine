FROM ymst180/xalpine:jdk

MAINTAINER ymst180 <ymst180@gmail.com>

RUN apk add --update wget unzip 
ENV GLASSFISH_INSTALL=/opt
RUN mkdir -p ${GLASSFISH_INSTALL}
WORKDIR ${GLASSFISH_INSTALL}
ENV GLASSFISH_URL=http://download.oracle.com/glassfish/4.1.1/release/glassfish-4.1.1.zip
RUN wget --no-check-certificate $GLASSFISH_URL
ENV GLASSFISH_DIRECTORY=glassfish
#RUN unzip -p ${GLASSFISH_URL##*/} | 
#RUN  ${GLASSFISH_URL##*/} tar -xf- -C ${GLASSFISH_INSTALL}/${GlASSFISH_DIRECTORY}
#RUN unzip ${GLASSFISH_URL##*/} -d ${GLASSFISH_INSTALL}/$GLASSFISH_DIRECTORY
#RUN rm -f ${GLASSFISH_URL##*/}
#ENV GLASSFISH_HOME=/opt/$GLASSFISH_DIRECTORY

