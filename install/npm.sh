#!/bin/sh

if [ ! -f /usr/bin/npm ];
then
    echo "--------------"
    echo "Installing npm"
    echo "--------------"

    apt-get install -y --force-yes npm
    echo "alias npm='npm --no-bin-links'" >> /home/vagrant/.bashrc
    echo "alias npm='npm --no-bin-links'" >> /home/vagrant/.zrc
fi