#!/bin/sh

if [ ! -f /etc/php5/fpm/php.ini ];
then
    echo "------------------"
    echo "Installing php-fpm"
    echo "------------------"

    apt-get install -y --force-yes php5-fpm

    sed -i -e "s/;date.timezone =/date.timezone = Europe\/Paris/g" /etc/php5/fpm/php.ini
    sed -i -e "s/;listen.mode = 0660/listen.mode = 0666/g" /etc/php5/fpm/pool.d/www.conf
fi