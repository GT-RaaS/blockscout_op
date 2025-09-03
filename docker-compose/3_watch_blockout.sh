#!/bin/bash

echo
echo "docker ps:"
watch -n 1 docker compose -f geth.yml ps
