#!/bin/sh

if [ ! -f /etc/php5/cli/php.ini ];
then
    echo "------------------"
    echo "Installing php-cli"
    echo "------------------"

    apt-get install -y --force-yes php5-cli

    sed -i -e "s/;date.timezone =/date.timezone = Europe\/Paris/g" /etc/php5/cli/php.ini
fi