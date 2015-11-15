#!/bin/sh

# $1: root password

# If phpmyadmin does not exist
if [ ! -f /etc/phpmyadmin/config.inc.php ];
then
    echo "---------------------"
    echo "Installing phpmyadmin"
    echo "---------------------"

    /usr/share/debconf/fix_db.pl

    echo "phpmyadmin phpmyadmin/app-password-confirm password" | debconf-set-selections
    echo "phpmyadmin phpmyadmin/dbconfig-install boolean true" | debconf-set-selections
    echo "phpmyadmin phpmyadmin/mysql/admin-pass password $1" | debconf-set-selections
    echo "phpmyadmin phpmyadmin/mysql/app-pass password" | debconf-set-selections
    echo "phpmyadmin phpmyadmin/reconfigure-webserver multiselect none" | debconf-set-selections

	apt-get -y install phpmyadmin
fi