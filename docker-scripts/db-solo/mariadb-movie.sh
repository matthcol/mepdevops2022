#!/bin/bash
docker run --detach \
	--name mariadb-movie \
	--publish 3306:3306 \
	--env MARIADB_DATABASE=dbmovie \
	--env MARIADB_USER=movie \
	--env MARIADB_PASSWORD=password \
	--env MARIADB_ROOT_PASSWORD=password \
	docker.io/library/mariadb:latest

#	--mount type=bind,src="$(pwd)"/sql/mysql_mariadb,target=/docker-entrypoint-initdb.d \

