#!/bin/sh

if [ ! -f /usr/local/bin/grunt ]
then
    echo "----------------"
    echo "Installing grunt"
    echo "----------------"

    npm install -g grunt-cli
fi