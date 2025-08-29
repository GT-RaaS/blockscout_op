#!/bin/bash

echo "docker down:"
docker-compose -f no-services.yml down

echo
echo "docker up:"
docker compose -f no-services.yml up -d

echo
echo "docker ps:"
docker compose -f no-services.yml ps
