FROM ubuntu:jammy

RUN apt update -y && \
    apt install -y openssh-server net-tools nano

RUN mkdir /var/run/sshd && \
    mkdir /root/.ssh && \
    chmod 700 /root/.ssh

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
