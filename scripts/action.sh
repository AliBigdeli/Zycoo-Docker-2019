#!/bin/bash

action="$1"
para="$2"
host="10.103.0.2"
username="`grep "MYSQL_USER" /app/broadcast-system/.env | cut -d "=" -f2 | tr -d " "`"
passworld="`grep "MYSQL_PASSWORD" /app/broadcast-system/.env | cut -d "=" -f2 | tr -d " "`"
dbname="`grep "MYSQL_DATABASE" /app/broadcast-system/.env | cut -d "=" -f2 | tr -d " "`"

[ -z "${action}" ] && echo "Usage:$0 action para" && exit 1

case ${action} in
    backup)
        mysqldump -t ${dbname} -h${host} -u${username} -p${passworld} --triggers=false --tables \
                t_pbx_inbound_did \
                t_pbx_number_dod \
                t_pbx_users_extension \
                t_pbx_users_voiptrunk \
                t_pbx_call_queues \
                t_pbx_dialrule \
                t_pbx_ivr \
                t_global_config \
                t_paging_tasks \
                t_paging_users \
                t_paging_devices \
                t_paging_groups \
                t_paging_services \
                t_paging_types \
                t_paging_tags \
                t_paging_deviceGroups \
                t_paging_deviceTags \
                t_paging_userGroups \
                t_paging_userServices > /tmp/backup.sql
        sleep 1
    ;;
    reset)
        rm -rf /etc/.default
        /usr/sbin/reboot
    ;;
    restore)
        [ ! -f "${para}" ] && echo "Usage:$0 restore sql" && exit 1
        cd /app/broadcast-system/ && docker-compose stop && sleep 1 && git clean -fd && sleep 1 && git checkout . && sleep 1 && rm -rf /app/broadcast-system/data/zycoo_init/sql/.restore && sleep 1 && docker-compose start
        sleep 5
        while [ 1 ]
        do
            if [ -f /app/broadcast-system/data/zycoo_init/sql/.restore_ready ];then
                rm -rf /app/broadcast-system/data/zycoo_init/sql/.restore_ready
                cat << EOF > /tmp/truncate.sql
SET FOREIGN_KEY_CHECKS=0;
TRUNCATE TABLE t_pbx_inbound_did;
TRUNCATE TABLE t_pbx_number_dod;
TRUNCATE TABLE t_pbx_users_extension;
TRUNCATE TABLE t_pbx_users_voiptrunk;
TRUNCATE TABLE t_pbx_call_queues;
TRUNCATE TABLE t_pbx_dialrule;
TRUNCATE TABLE t_pbx_ivr;
TRUNCATE TABLE t_global_config;
TRUNCATE TABLE t_paging_tasks;
TRUNCATE TABLE t_paging_users;
TRUNCATE TABLE t_paging_devices;
TRUNCATE TABLE t_paging_groups;
TRUNCATE TABLE t_paging_services;
TRUNCATE TABLE t_paging_types;
TRUNCATE TABLE t_paging_tags;
TRUNCATE TABLE t_paging_deviceGroups;
TRUNCATE TABLE t_paging_deviceTags;
TRUNCATE TABLE t_paging_userGroups;
TRUNCATE TABLE t_paging_userServices;
SET FOREIGN_KEY_CHECKS=1;                
EOF

                [ -f "/tmp/truncate.sql" ] && mysql -h${host} -u${username} -p${passworld} ${dbname} < /tmp/truncate.sql 
                mysql -h${host} -u${username} -p${passworld} ${dbname} < ${para} 

                touch /app/broadcast-system/data/zycoo_init/sql/.restore
                touch /app/broadcast-system/data/zycoo_init/sql/.restore_ok
                sleep 2
                break
            else
                echo $LINENO
                sleep 1
                continue
            fi
        done
    ;;
esac

exit 0