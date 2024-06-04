#!/usr/bin/env bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "===================================================="
echo "= Running 'build.sh' from: "
echo "= $DIR"
echo "===================================================="

# Build backend docker image using jib
cd ../ultima-voting-backend && ./gradlew jibDockerBuild

# Move back to base directory
cd ../ultima-infrastructure

# Build backoffice docker image and tag it to "luminara/ultima-backoffice"
docker build -t "luminara/ultima-backoffice" ../ultima-voting-backoffice


# Build judge-frontend docker image and tag it to "luminara/ultima-judge"
docker build -t "luminara/ultima-judge" ../ultima-voting-judge-frontend

echo "===================================================="
echo "== 🕺💃🕺💃 Build completed successfully💃🕺💃🕺 =="
echo "===================================================="
