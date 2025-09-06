#!/bin/bash

echo "IP: 43.133.182.153"

echo "docker stop:"
docker compose -f geth.yml stop

sudo chmod -R 777  services/dets/
sudo chmod -R 777  services/logs/

echo
echo "docker up:"
DOCKER_REPO=blockscout-optimism docker compose -f geth.yml up -d

echo
echo "docker ps:"
watch -n 1 docker compose -f geth.yml ps
