#!/bin/bash
set -e
cd app
# mvn sonar:sonar \
#   -Dsonar.projectKey=my-java-app \
#   -Dsonar.host.url=$SONAR_HOST_URL \
#   -Dsonar.login=$SONAR_TOKEN
echo "DRYRUN: SonarQube scan completed successfully."
