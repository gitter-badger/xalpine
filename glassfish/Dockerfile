FROM ymst180/xalpine:jdk

MAINTAINER ymst180 <ymst180@gmail.com>

RUN apk add --update wget unzip 
ENV GLASSFISH_INSTALL=/opt
RUN mkdir -p /tmp/ 
RUN mkdir -p ${GLASSFISH_INSTALL}
WORKDIR /tmp
ENV GLASSFISH_URL=http://download.oracle.com/glassfish/4.1.1/release/glassfish-4.1.1.zip
RUN wget --no-check-certificate $GLASSFISH_URL
RUN mv ${GLASSFISH_URL##*/} ${GLASSFISH_INSTALL}/

WORKDIR ${GLASSFISH_INSTALL}
RUN unzip ${GLASSFISH_URL##*/}
ENV GLASSFISH_DIRECTORY=glassfish4
ENV GLASSFISH_PASSWORD=admin
ENV	PATH=$PATH:/$GLASSFISH_INSTALL/$GLASSFISH_DIRECTORY/bin 
RUN echo "AS_ADMIN_PASSWORD=" > /tmp/glassfishpwd && \
    echo "AS_ADMIN_NEWPASSWORD=${GLASSFISH_PASSWORD}" >> /tmp/glassfishpwd  && \
	asadmin --user=admin --passwordfile=/tmp/glassfishpwd change-admin-password --domain_name domain1 && \
	asadmin start-domain && \
    echo "AS_ADMIN_PASSWORD=${GLASSFISH_PASSWORD}" > /tmp/glassfishpwd && \
    asadmin --user=admin --passwordfile=/tmp/glassfishpwd enable-secure-admin && \
    asadmin --user=admin stop-domain
RUN rm -Rf /tmp/*

EXPOSE 4848 8080 8181

CMD ["asadmin", "start-domain", "-v"]
