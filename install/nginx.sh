#!/bin/sh

if [ ! -f /etc/nginx/nginx.conf ];
then
    echo "----------------"
    echo "Installing nginx"
    echo "----------------"

    apt-get install -y --force-yes nginx
fi