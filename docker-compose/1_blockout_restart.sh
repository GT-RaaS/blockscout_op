#!/bin/bash

echo "docker down:"
docker compose -f geth.yml stop

# sudo rm -rf blockscout-db-data
# if [ ! -d "blockscout-db-data" ]; then
#     mkdir -p blockscout-db-data
# fi

# sudo rm -rf logs
# if [ ! -d "logs" ]; then
#     mkdir -p logs
# fi

# sudo rm -rf redis-data
# if [ ! -d "redis-data" ]; then
#     mkdir -p redis-data
# fi

if [ ! -d "logs" ]; then
    mkdir -p logs
fi

if [ ! -d "redis-data" ]; then
    mkdir -p redis-data
fi

echo
echo "docker up:"
DOCKER_REPO=blockscout-optimism docker compose -f geth.yml up -d

echo
echo "docker ps:"
docker compose -f geth.yml ps
