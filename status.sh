#!/usr/bin/env bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "============================================================"
echo "= Running 'status.sh' from: "
echo "= $DIR"
echo "============================================================"

if [ "$(uname -s)" == "Darwin" ];
then
  HOSTIP=$(ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f2)
else
  LINUXIPS=$(ip addr show | grep -oP 'inet \K[\d.]+')

  HOSTIP=$(echo "${LINUXIPS}" | head -1)
fi


  echo "============================================================"
  echo "= IP Addresses of running services "
  echo "HOST: ${HOSTIP}"
  echo "Admin App   - IP: ${HOSTIP} full http://${HOSTIP}:8000"
  echo "Judge App   - IP: ${HOSTIP} full http://${HOSTIP}:8001"
  echo "Backend API - IP: ${HOSTIP} full http://${HOSTIP}:9090"
  echo "============================================================"

docker-compose -f $DIR/docker-compose.yaml ps