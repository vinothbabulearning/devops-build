#!/bin/bash

# stopping all container & removing it
# otherwise it will throw error
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

# Building docker image
docker build -t vinothbabulearning/$1:v2 .

# creating container using docker compose file
docker compose up -d

echo "buid & container"

