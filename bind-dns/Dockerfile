FROM centos:latest

# Install bind-dns server
RUN dnf install bind bind-utils -y

# Expose port 53 (dns)
EXPOSE 53/udp

# Copy the config file
COPY ./config/named.conf /etc/named.conf

# Start the dns server with the copied config file
ENTRYPOINT /usr/sbin/named -u named -c /etc/named.conf -f