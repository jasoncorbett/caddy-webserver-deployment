#!/bin/bash

mkdir /var/log/caddy
mkdir /etc/caddy
cp Caddyfile /etc/caddy/
chown www-data:www-data /var/log/caddy
cp caddy.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable caddy.service
./get-latest-caddy.sh
