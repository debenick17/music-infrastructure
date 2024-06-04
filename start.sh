#!/usr/bin/env bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "=============================================="
echo "= Running 'start.sh' from: "
echo "= $DIR"
echo "=============================================="


# Run the 3 images
docker compose -f $DIR/docker-compose.yaml up -d


echo "============================================================"
echo "== 🕺💃🕺💃 Ultima platform successfully started 💃🕺💃🕺 ="
echo "============================================================"
