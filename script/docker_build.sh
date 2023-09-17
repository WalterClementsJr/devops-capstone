#!/usr/bin/env bash

CONTAINER_NAME="hello-world"
VERSION="latest"

# Build image and add a descriptive tag
docker build --tag ${CONTAINER_NAME}:${VERSION} app
