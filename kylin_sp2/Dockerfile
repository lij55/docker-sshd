FROM kylinos:v10-sp2

RUN yum -y install hostname python2 openssh-server passwd bash sudo \
    && yum clean all

ADD ./start.sh /start.sh
RUN mkdir -p /var/run/sshd
RUN groupadd -g 200 sshd
RUN useradd -u 200 -g 200 -c sshd -d / sshd
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N '' 

RUN chmod 755 /start.sh
RUN ./start.sh gpadmin 'QWE!@#123qwe'
CMD  ["/usr/sbin/sshd", "-D"]
