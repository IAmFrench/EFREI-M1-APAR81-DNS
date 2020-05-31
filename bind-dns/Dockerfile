FROM centos:latest
RUN dnf install bind bind-utils -y

EXPOSE 53/udp

ENTRYPOINT /usr/sbin/named -u named -c /etc/named.conf -f