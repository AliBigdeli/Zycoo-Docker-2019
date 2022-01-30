#!/bin/bash

IPADDR="`/sbin/ip addr | grep enp1s0 | grep inet | awk '{print $2}' | awk -F "/" '{print $1}'`"
echo "foo${IPADDR}" > /root/test.txt

OLD_HOST="`grep -w "HOST" /app/broadcast-system/.env | awk -F "=" '{print $2}'`"

if [ "foo${IPADDR}" != "foo" ];then
	if [ "foo${OLD_HOST}" != "foo${IPADDR}" ];then
		sed -i '/^HOST=/cHOST='"${IPADDR:=192.168.1.100}"'' /app/broadcast-system/.env
		cd /app/broadcast-system
		/usr/local/bin/docker-compose -f /app/broadcast-system/docker-compose.yml down
		sleep 1
		/usr/local/bin/docker-compose -f /app/broadcast-system/docker-compose.yml up -d
	fi
fi

exit 0
