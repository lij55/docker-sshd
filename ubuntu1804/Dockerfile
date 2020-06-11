FROM ubuntu:18.04

RUN apt-get update && apt-get install -y openssh-server passwd bash sudo \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD ./start.sh /start.sh
RUN mkdir /var/run/sshd

RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN chmod 755 /start.sh
RUN ./start.sh gpadmin changeme

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
