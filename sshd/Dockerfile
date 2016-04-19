FROM ymst180/xalpine:latest

MAINTAINER ymst180 ymst180@gmail.com

RUN mkdir -p ~root/.ssh
RUN chmod 700 ~root/.ssh/
RUN echo 'root:root' | chpasswd
RUN sed -i -e 's/^#*\(PermitRootLogin\) .*/\1 yes/' /etc/ssh/sshd_config
RUN sed -ri 's/^UsePAM yes/UsePAM no/' /etc/ssh/sshd_config
RUN sed -ri 's/^#Port 22/Port 22/' /etc/ssh/sshd_config
RUN ssh-keygen -t rsa -N "" -f /etc/ssh/ssh_host_rsa_key
EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
