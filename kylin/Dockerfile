FROM reg.dev.openpie.com/test/kylin-v10-sp2

RUN yum -y install openssh-server passwd bash sudo \
    && yum clean all

ADD ./start.sh /start.sh
RUN mkdir /var/run/sshd

RUN chmod 755 /start.sh
RUN ./start.sh gpadmin Tu0shupa!
CMD  ["/usr/sbin/sshd", "-D"]
