#!/bin/bash
docker run --detach \
	--name mariadb-movie \
	--env MARIADB_USER=movie \
	--env MARIADB_PASSWORD=password \
	--env MARIADB_ROOT_PASSWORD=password \
	--env MARIADB_DATABASE=dbmovie \
	docker.io/library/mariadb:latest
