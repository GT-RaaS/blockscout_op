#!/bin/bash

echo "docker down:"
docker compose -f geth.yml down

# 检查文件夹是否存在，如果不存在则创建
if [ ! -d "blockscout-db-data" ]; then
    mkdir -p blockscout-db-data
fi

echo
echo "docker up:"
DOCKER_REPO=blockscout-optimism docker compose -f geth.yml up -d

echo
echo "docker ps:"
docker compose -f geth.yml ps
