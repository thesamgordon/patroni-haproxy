FROM haproxy:2.9-alpine

USER root
RUN apk add --no-cache gettext
USER haproxy

COPY haproxy.template.cfg /usr/local/etc/haproxy/haproxy.template.cfg
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 5000 5001 7000

ENTRYPOINT ["/entrypoint.sh"]
