#!/bin/bash

echo "nginx stop:"
sudo systemctl stop nginx

echo
echo "nginx status:"
sudo systemctl status nginx

exit 0