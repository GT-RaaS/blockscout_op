#!/bin/bash

echo "docker down:"
docker compose -f anvil.yml stop

# 检查文件夹是否存在，如果不存在则创建
if [ ! -d "blockscout-db-data" ]; then
    mkdir -p blockscout-db-data
fi

if [ ! -d "logs" ]; then
    mkdir -p logs
fi

if [ ! -d "redis-data" ]; then
    mkdir -p redis-data
fi

echo
echo "docker up:"
DOCKER_REPO=blockscout-optimism docker compose -f anvil.yml up -d

echo
echo "docker ps:"
docker compose -f anvil.yml ps
