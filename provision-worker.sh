#!/bin/bash

MANAGER_IP=$1
NODE_IP=$2
TOKEN=`cat /home/core/share/worker_token`

if which docker >/dev/null 2>&1; then
	docker swarm join --listen-addr ${NODE_IP}:2377 --advertise-addr ${NODE_IP} --token=$TOKEN ${MANAGER_IP}:2377
fi
