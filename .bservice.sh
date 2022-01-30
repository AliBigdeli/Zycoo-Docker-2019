#!/bin/bash

action=$1
[ ! -z $2 ] && container=$2

PWD="`pwd`"

if [ ${PWD} != "/app/broadcast-system" ];then
	cd /app/broadcast-system
	PWD="`pwd`"
fi
. ${PWD}/.env

image_path="${REGISTRY_HOST}:${REGISTRY_PORT}"

pull_base(){
	echo "Start pull base image..."
	docker pull ${image_path}/zycoo_mysql:5.7.16
	docker pull ${image_path}/zycoo_init:base
	docker pull ${image_path}/zycoo_asterisk:base
	docker pull ${image_path}/zycoo_icecast_server:base
	docker pull ${image_path}/zycoo_icecast_client:base
	docker pull ${image_path}/zycoo_easydarwin:base
	docker pull ${image_path}/zycoo_nginx:base
	docker pull ${image_path}/zycoo_redis:base
	docker pull ${image_path}/zycoo_broadcast_gateway:base
	docker pull ${image_path}/docker:dind
}

start_over(){
	echo "Start over broadcast service ..."
	docker-compose -f docker-compose.yml up -d
}

first_start(){
	pull_base
	echo "First start broadcast service ..."
	docker-compose -f docker-compose.yml up -d
}

stop_over(){
	echo "Stop broadcast service and delete container..."
	docker-compose -f docker-compose.yml down
}

start(){
	echo "Start broadcast service..."
	docker-compose start
}

stop(){
	echo "Stop broadcast service..."
	docker-compose stop
}

delete_newest(){
	echo "Delete old image version..."
	docker image rm ${image_path}/zycoo_init:${ZYCOO_INIT_TAG}
	docker image rm ${image_path}/zycoo_asterisk:${ZYCOO_ASTERISK_TAG}
	docker image rm ${image_path}/zycoo_icecast_server:${ZYCOO_ICECAST_SERVER_TAG}
	docker image rm ${image_path}/zycoo_icecast_client:${ZYCOO_ICECAST_CLIENT_TAG}
	docker image rm ${image_path}/zycoo_easydarwin:${ZYCOO_EASYDARWIN_TAG}
	docker image rm ${image_path}/zycoo_nginx:${ZYCOO_NGINX_TAG}
	docker image rm ${image_path}/zycoo_broadcast_gateway:${ZYCOO_BROADCAST_GATEWAY_TAG}
}

update(){
	name=$1
	case ${name} in
	zycoo_asterisk)
		stop_over
		docker image rm ${image_path}/${name}:${ZYCOO_ASTERISK_TAG}
		start_over
	;;
	zycoo_init)
		stop_over
		docker image rm ${image_path}/${name}:${ZYCOO_INIT_TAG}
		start_over
	;;
	zycoo_icecast_server)
		stop_over
		docker image rm ${image_path}/${name}:${ZYCOO_ICECAST_SERVER_TAG}
		start_over
	;;
	zycoo_icecast_client)
		stop_over
		docker image rm ${image_path}/${name}:${ZYCOO_ICECAST_CLIENT_TAG}
		start_over
	;;
	zycoo_easydarwin)
		stop_over
		docker image rm ${image_path}/${name}:${ZYCOO_EASYDARWIN_TAG}
		start_over
	;;
	zycoo_nginx)
		stop_over
		docker image rm ${image_path}/${name}:${ZYCOO_NGINX_TAG}
		start_over
	;;
	zycoo_broadcast_gateway)
		stop_over
		docker image rm ${image_path}/${name}:${ZYCOO_BROADCAST_GATEWAY_TAG}
		start_over
	;;
	*)
		echo "Update broadcast all service..."
		delete_newest
		start_over
	;;
	esac
}

enter(){
	name=$1
	case ${name} in
	zycoo_asterisk|1)
		docker exec -it zycoo_asterisk /bin/bash
	;;
	zycoo_broadcast_gateway|2)
		docker exec -it zycoo_broadcast_gateway /bin/bash
	;;
	zycoo_icecast_server|3)
		docker exec -it zycoo_icecast_server /bin/bash
	;;
	zycoo_icecast_client|4)
		docker exec -it zycozycoo_icecast_cliento_asterisk /bin/bash
	;;
	zycoo_easydarwin|5)
		docker exec -it zycoo_easydarwin /bin/bash
	;;
	zycoo_nginx|6)
		docker exec -it zycoo_nginx /bin/bash
	;;
	*)
		echo "No such container! Please checkout!"
	;;
	esac
}

debian_install_env(){
	if which docker > /dev/null;then
		echo "Broadcast env have been installed!please checkout!"
	fi
	echo "Install broadcast service..."
	apt-get update
	apt-get install \
		apt-transport-https \
		ca-certificates \
		curl \
		gnupg2 \
		software-properties-common -y
	curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
	apt-key fingerprint 0EBFCD88
	add-apt-repository \
		   "deb [arch=amd64] https://download.docker.com/linux/debian \
		      $(lsb_release -cs) \
		         stable"
	apt-get update
	apt-get install docker-ce docker-ce-cli containerd.io -y
	systemctl stop docker
	echo "{ \"insecure-registries\":[\"${image_path}\"] }" > /etc/docker/daemon.json
	systemctl start docker
	systemctl enable docker
	python3 .get-pip.py
	pip install docker-compose
}

ubuntu_install_env(){
	if which docker > /dev/null;then
		echo "Broadcast env have been installed!please checkout!"
	fi
	echo "Install broadcast service..."
	apt-get update
	apt-get install \
		apt-transport-https \
		ca-certificates \
		curl \
		gnupg-agent \
		software-properties-common -y
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
	apt-key fingerprint 0EBFCD88
	add-apt-repository \
		   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
		      $(lsb_release -cs) \
		         stable"
	apt-get update
	apt-get install docker-ce docker-ce-cli containerd.io -y
	systemctl stop docker
	echo "{ \"insecure-registries\":[\"${image_path}\"] }" > /etc/docker/daemon.json
	systemctl start docker
	systemctl enable docker
	python3 .get-pip.py
	pip install docker-compose
}

centos_install_env(){
	if which docker > /dev/null;then
		echo "Broadcast env have been installed!please checkout!"
	fi
	echo "Install broadcast service..."
	yum update
	yum install python3 docker -y
	systemctl stop docker
	echo "{ \"insecure-registries\":[\"${image_path}\"] }" > /etc/docker/daemon.json
	systemctl start docker
	systemctl enable docker
	python3 .get-pip.py
	pip install docker-compose
}

reset_default(){
	git clean -fd
	git checkout .
}

case ${action} in
	#first start
	first_start)
		first_start
	;;

	#normal start
	start)
		start
	;;

	#normal stop
	stop)
		stop
	;;

	#Create all container
	start_over)
		start_over
	;;

	#stop and delete container
	stop_over)
		stop_over
	;;

	#update broadcast service for newst image
	update)
		update ${container}
	;;

	#enter speceis container
	e)
		enter ${container}
	;;

	#upgrade broadcast service
	upgrade)
		reset_default
		git pull
		update
	;;

	#debian system os install broadcast service enviroment
	debian_install_env)
		debian_install_env
	;;

	#ubuntu system os install broadcast service enviroment
	ubuntu_install_env)
		ubuntu_install_env
	;;

	#centos system os install broadcast service enviroment
	centos_install_env)
		centos_install_env
	;;

	#reset factory
	reset_default)
		reset_default
	;;

	#delete all services current newest version image.
	delete_newest)
		delete_newest
	;;

	#default option
	*)
		echo "usage:/app/broadcast-system/`basename $0` {action}"
		echo -e "\tstart\t\t\tStart broadcast service."
		echo -e "\tstop\t\t\tStop broadcast service."
		echo -e "\tstart_over\t\tCreate all container and start broadcast service."
		echo -e "\tstop_over\t\tStop broadcast service and delete all container."
		echo -e "\tfirst_start\t\tPull all base images and Start broadcast service."
		echo -e "\tupdate\t\t\tUpdate all services image version."
		echo -e "\te\t\t\tEnter species container."
		echo -e "\tupgrade\t\t\tUpgrade entire broadcast service and data."
		echo -e "\treset_default\t\tBroadcast service reset factory."
		echo -e "\tdelete_newest\t\tdelete all services current newest version image."
		echo -e "\tdebian_install_env\tDebian system os install broadcast service dependencies."
		echo -e "\tubuntu_install_env\tUbuntu system os install broadcast service dependencies."
		echo -e "\tcentos_install_env\tCentos system os install broadcast service dependencies."
		echo "Examples:"
		echo -e "\t/app/broadcast-system/`basename $0` start\t--Start broadcast service."
	;;
esac
