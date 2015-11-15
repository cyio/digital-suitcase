#!/bin/sh

if [ ! -f /usr/bin/composer ];
then
    echo "-------------------"
    echo "Installing composer"
    echo "-------------------"

    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/bin/composer
fi