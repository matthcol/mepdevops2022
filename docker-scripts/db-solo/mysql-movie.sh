#!/bin/bash
docker run --detach \
	--name mysql-movie \
	--publish 3307:3306 \
	--env MYSQL_DATABASE=dbmovie \
	--env MYSQL_USER=movie \
	--env MYSQL_PASSWORD=password \
	--env MYSQL_ROOT_PASSWORD=password \
	docker.io/library/mysql:latest

