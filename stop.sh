#!/usr/bin/env bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "============================================================"
echo "= Running 'stop.sh' from: "
echo "= $DIR"
echo "============================================================"

docker-compose -f $DIR/docker-compose.yaml stop


echo "============================================================"
echo "== 🕺💃🕺💃 Ultima platform successfully stopped 💃🕺💃🕺 ="
echo "============================================================"
