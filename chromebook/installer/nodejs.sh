#!/bin/sh

if [ ! -f /usr/bin/nodejs ];
then
    echo "-----------------"
    echo "Installing nodejs"
    echo "-----------------"

    apt-get install -y --force-yes nodejs
fi