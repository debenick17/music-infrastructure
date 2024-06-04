#!/usr/bin/env bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "============================================================"
echo "= Running 'logs.sh' from: "
echo "= $DIR"
echo "============================================================"

docker-compose -f $DIR/docker-compose.yaml logs