#!/bin/bash
docker run --detach \
	--name postgresql-movie \
	--publish 5432:5432 \
	--env POSTGRES_DB=dbmovie \
	--env POSTGRES_USER=movie \
	--env POSTGRES_PASSWORD=password \
	docker.io/library/postgres:latest


