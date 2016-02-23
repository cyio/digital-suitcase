#!/bin/sh

if [ ! -f /usr/bin/npm ];
then
    echo "--------------"
    echo "Installing npm"
    echo "--------------"

    apt-get install -y --force-yes npm
		npm install npm -g
fi
