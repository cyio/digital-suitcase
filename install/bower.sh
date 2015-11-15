#!/bin/sh

if [ ! -f /usr/local/bin/bower ]
then
    echo "----------------"
    echo "Installing bower"
    echo "----------------"

    npm install -g bower
fi