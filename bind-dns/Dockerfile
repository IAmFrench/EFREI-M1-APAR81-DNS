# Build from CentOS as requested
FROM centos:latest

# Upgrade packages
RUN dnf update --nogpgcheck -y

# Install bind-dns server
RUN dnf install bind bind-utils -y

# Declare volume
VOLUME ["/var/named"]

# Expose port 53 (dns)
EXPOSE 53/udp

# Start the dns server with the copied config file
# ENTRYPOINT /usr/sbin/named -u named -c /etc/named.conf -f
COPY ./docker-entrypoint.sh /
ENTRYPOINT  ["/docker-entrypoint.sh" ]