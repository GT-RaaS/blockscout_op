#!/bin/bash

echo
echo "nginx status:"
sudo systemctl status nginx

echo
sudo systemctl restart nginx

echo
echo "nginx status:"
sudo systemctl status nginx

exit 0