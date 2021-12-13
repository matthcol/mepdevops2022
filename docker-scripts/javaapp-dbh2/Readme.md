# Api Rest Java running in a container 

## Build image
- docker build -t imovieapp --build-arg repodir=./repos  --build-arg artifact=movieapi.jar .

## Manage image
- docker image ls
- docker image rm imovieapp

## Run container
- docker run -d -p 8080:8080 --name movieapp imovieapp

# Manage container
- docker ps -a
- docker logs movieapp
- docker stop/start/rm movieapp
