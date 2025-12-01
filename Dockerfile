FROM haproxy:3.3-alpine

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

EXPOSE 5000 5001 5002 7000
