#!/bin/sh

if [ ! -f /usr/local/bin/gulp ]
then
    echo "----------------"
    echo "Installing bower"
    echo "----------------"

    npm install -g gulp
fi