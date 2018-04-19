#!/bin/bash
curl -s 'https://caddyserver.com/download/linux/amd64?license=personal' |tar xzf - caddy
chown root:root caddy
chmod 755 caddy
mv caddy /usr/local/bin/caddy
setcap cap_net_bind_service=+ep /usr/local/bin/caddy
systemctl restart caddy
