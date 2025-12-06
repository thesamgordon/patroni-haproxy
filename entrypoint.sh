#!/bin/sh
set -e

if [ -z "$PATRONI1_IP" ] || [ -z "$PATRONI2_IP" ] || [ -z "$PATRONI3_IP" ]; then
    echo "Error: PATRONI1_IP, PATRONI2_IP, and PATRONI3_IP must be set"
    exit 1
fi

cat > /etc/gai.conf << 'EOF'
precedence ::ffff:0:0/96  10
precedence ::/0           100
EOF

envsubst '${PATRONI1_IP} ${PATRONI2_IP} ${PATRONI3_IP}' < /usr/local/etc/haproxy/haproxy.template.cfg > /usr/local/etc/haproxy/haproxy.cfg

exec haproxy -f /usr/local/etc/haproxy/haproxy.cfg
