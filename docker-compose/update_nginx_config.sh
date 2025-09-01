#!/bin/bash

echo "update nginx config:"
sudo cp nginx_default /etc/nginx/sites-available/default

echo
echo "nginx config:"
cat /etc/nginx/sites-available/default
echo
echo "nginx config test:"
sudo nginx -t

echo
echo "nginx restart:"
sudo systemctl restart nginx

echo
echo "nginx status:"
sudo systemctl status nginx

exit 0