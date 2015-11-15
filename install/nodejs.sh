#!/bin/sh

if [ ! -f /usr/bin/nodejs ];
then
    echo "-----------------"
    echo "Installing nodejs"
    echo "-----------------"

    apt-get install -y --force-yes nodejs

    update-alternatives --install /usr/bin/node node /usr/bin/nodejs 99
fi