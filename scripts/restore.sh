#!/bin/bash

file="$1"

[ ! -f "${file}" ] && exit 1

nohup /app/broadcast-system/scripts/action.sh restore ${file} >> /var/log/restore.log 2>&1

exit 0
