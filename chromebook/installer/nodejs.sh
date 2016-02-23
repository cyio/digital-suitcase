#!/bin/sh

if [ ! -f /usr/bin/nodejs ];
then
    echo "-----------------"
    echo "Installing nodejs"
    echo "-----------------"
    
    curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
    apt-get install -y --force-yes nodejs
fi