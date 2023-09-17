#!/usr/bin/env bash
# tags and uploads an image to Docker Hub

# Run `docker_run.sh` before running this

DOCKER_HUB_ID="walterclementsjr"
DOCKER_REPOSITORY="hello-world"
VERSION="latest"

DOCKER_PATH=${DOCKER_HUB_ID}/${DOCKER_REPOSITORY}

# Authenticate & tag
echo "Docker ID and Image: $DOCKER_PATH"
docker login -u ${DOCKER_HUB_ID}
docker tag ${DOCKER_REPOSITORY}:${VERSION} ${DOCKER_PATH}:${VERSION}

# Push to registry
docker push ${DOCKER_PATH}:${VERSION}
