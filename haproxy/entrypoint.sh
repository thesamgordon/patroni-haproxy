#!/bin/sh
set -e

if [ -z "$PATRONI_HOST_1" ] || [ -z "$PATRONI_HOST_2" ] || [ -z "$PATRONI_HOST_3" ]; then
    echo "Error: PATRONI1_IP, PATRONI2_IP, and PATRONI3_IP must be set"
    exit 1
fi

envsubst '${PATRONI1_IP} ${PATRONI2_IP} ${PATRONI3_IP}' < /usr/local/etc/haproxy/haproxy.template.cfg > /usr/local/etc/haproxy/haproxy.cfg

exec haproxy -f /usr/local/etc/haproxy/haproxy.cfg
