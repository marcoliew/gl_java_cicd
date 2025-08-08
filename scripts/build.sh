#!/bin/bash
set -e
cd app
mvn $MAVEN_CLI_OPTS clean package
