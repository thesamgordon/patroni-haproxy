FROM traefik:v3.6

RUN apk add --no-cache gettext

COPY traefik.yml /etc/traefik/traefik.yml
COPY dynamic_config.template.yml /etc/traefik/dynamic_config.template.yml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 5000 5001 7000

ENTRYPOINT ["/entrypoint.sh"]
