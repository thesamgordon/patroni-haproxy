FROM haproxy:3.3-alpine

USER root
RUN apk add --no-cache gettext

COPY haproxy.cfg.template /usr/local/etc/haproxy/haproxy.cfg.template

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

USER haproxy
EXPOSE 5000 5001 5002 7000

ENTRYPOINT ["/entrypoint.sh"]
