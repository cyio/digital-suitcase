#!/bin/sh

# $1: root password

if [ ! -f /etc/mysql/my.cnf ];
then
    echo "----------------"
    echo "Installing mysql"
    echo "----------------"

    echo "mysql-server mysql-server/root_password password $1" | debconf-set-selections
    echo "mysql-server mysql-server/root_password_again password $1" | debconf-set-selections

    apt-get install -y --force-yes mysql-server
fi