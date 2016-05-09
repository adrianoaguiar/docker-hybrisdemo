#!/bin/bash

export DOCKER_CONTAINER_IP=$(ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p')

echo $DOCKER_CONTAINER_IP;

if [ "$1" = 'run' ]; then
	cd ${HYBRIS_PLATFORM_HOME}
	exec ./hybrisserver.sh $@
fi

exec "$@"
