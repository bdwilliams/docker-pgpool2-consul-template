#!/bin/bash

pg_md5 -f /etc/pgpool2/pgpool.conf -m -u ${POSTGRES_USER} ${POSTGRES_PASSWORD}

pgpool -n -d > /var/log/pgpool.log 2>&1 &

consul-template \
	-consul consul.service.consul:8500 \
	-template "/etc/pgpool2/pgpool.conf.template:/etc/pgpool2/pgpool.conf:killall -HUP pgpool"