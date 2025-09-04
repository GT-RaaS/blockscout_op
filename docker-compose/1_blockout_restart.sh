#!/bin/bash

echo "IP: localhost"

echo "docker stop:"
docker compose -f geth.yml stop

sudo chmod -R 777  dets/
sudo chmod -R 777  logs/

sudo chmod -R "$(id -u):$(id -g)"  dets/
sudo chmod -R "$(id -u):$(id -g)"  logs/
sudo chmod -R "$(id -u):$(id -g)"  blockscout-db-data/

echo
echo "docker up:"
DOCKER_REPO=blockscout-optimism docker compose -f geth.yml up -d

echo
echo "docker ps:"
watch -n 1 docker compose -f geth.yml ps
