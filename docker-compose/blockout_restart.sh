#!/bin/bash

echo "docker down:"
docker-compose -f docker-compose.yml down

echo
echo "docker up:"
docker compose -f docker-compose.yml up -d

echo
echo "docker ps:"
docker compose -f docker-compose.yml ps
