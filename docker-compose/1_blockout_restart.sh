#!/bin/bash

echo "docker down:"
docker compose -f anvil.yml down

# 检查文件夹是否存在，如果不存在则创建
if [ ! -d "blockscout-db-data" ]; then
    mkdir -p blockscout-db-data
fi
sudo rm -rf blockscout-db-data/*

if [ ! -d "logs" ]; then
    mkdir -p logs
fi
sudo rm -rf logs/*

if [ ! -d "redis-data" ]; then
    mkdir -p redis-data
fi
sudo rm -rf redis-data/*

echo
echo "docker up:"
DOCKER_REPO=blockscout-optimism docker compose -f anvil.yml up -d

echo
echo "docker ps:"
docker compose -f anvil.yml ps
