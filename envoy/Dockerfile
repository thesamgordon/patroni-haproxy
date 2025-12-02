FROM envoyproxy/envoy:latest

COPY envoy.yaml /etc/envoy/envoy.yaml

CMD ["envoy", "-c", "/etc/envoy/envoy.yaml", "--service-node", "envoy-patroni"]
