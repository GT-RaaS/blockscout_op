#!/bin/bash

echo "docker down:"
docker compose -f geth.yml down

echo
echo "docker up:"
DOCKER_REPO=blockscout-optimism docker compose -f geth.yml up -d

echo
echo "docker ps:"
docker compose -f geth.yml ps
