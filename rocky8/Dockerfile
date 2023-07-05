FROM rockylinux:8

RUN yum -y update && yum -y install openssh-server passwd bash sudo \
    && yum clean all

ADD ./start.sh /start.sh
RUN mkdir /var/run/sshd
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 

RUN chmod 755 /start.sh
RUN ./start.sh gpadmin changeme
CMD  ["/usr/sbin/sshd", "-D"]
