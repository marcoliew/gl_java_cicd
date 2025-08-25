#!/bin/bash
ENV=$1
IMAGE=$2

echo "Deploying to $ENV with image $IMAGE..."

kubectl -n $ENV set image deployment/java-app java-app=$IMAGE
kubectl -n $ENV rollout status deployment/java-app

envsubst < k8s/dev/deployment.yaml | kubectl apply -f - 