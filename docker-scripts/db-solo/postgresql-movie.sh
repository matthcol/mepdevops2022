#!/bin/bash
docker run --detach \
	--name postgresql-movie \
	--publish 5432:5432 \
	--env POSTGRES_DB=dbmovie \
	--env POSTGRES_USER=movie \
	--env POSTGRES_PASSWORD=password \
	-v vpgdbmovie:/var/lib/postgresql/data \
	docker.io/library/postgres:latest


