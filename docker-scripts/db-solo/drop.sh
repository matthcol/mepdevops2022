#!/bin/bash
CONTAINER=$1

if [ -z "$CONTAINER" ]
then
	echo "Error: missing arg, container name"
	exit -1
fi

# TODO : improve regexp to avoid false matching
n=`docker ps -a 2> /dev/null | grep "$CONTAINER" | wc -l`
if (( n != 1 ))
then
	echo "Error: no container with this name"
	exit -2
fi
docker stop $CONTAINER > /dev/null 2>&1
docker rm $CONTAINER > /dev/null 2>&1
echo "docker removed: $CONTAINER"
exit 0
