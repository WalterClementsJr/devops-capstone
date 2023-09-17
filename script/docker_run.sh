#!/usr/bin/env bash

CONTAINER_NAME="hello-world"
VERSION="latest"
CONTAINER_PORT=80
HOST_PORT=80

# Run Nodejs app inside container
docker run -t --rm -p ${HOST_PORT}:${CONTAINER_PORT} ${CONTAINER_NAME}:${VERSION}
