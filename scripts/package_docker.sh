#!/bin/bash
set -e
docker build -t $DOCKER_IMAGE:$CI_COMMIT_SHORT_SHA app/
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push $DOCKER_IMAGE:$CI_COMMIT_SHORT_SHA
docker tag $DOCKER_IMAGE:$CI_COMMIT_SHORT_SHA $DOCKER_IMAGE:latest
docker push $DOCKER_IMAGE:latest
