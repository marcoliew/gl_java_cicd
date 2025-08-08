#!/bin/bash
set -e
trivy fs --exit-code 0 --severity HIGH,CRITICAL app/
trivy image --exit-code 0 --severity HIGH,CRITICAL $DOCKER_IMAGE:latest
