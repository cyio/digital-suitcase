#!/bin/sh

# $1: folder to install (/home/vagrant)
# $2: user (vagrant)

if [ ! -d $1/.oh-my-zsh ];
then
    if [ ! -f /bin/zsh ];
    then
        echo "--------------"
        echo "Installing zsh"
        echo "--------------"

        apt-get install -y --force-yes zsh
    fi

    echo "-------------------------------"
    echo "Installing OhMyZ.sh for $2 user"
    echo "-------------------------------"

    sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi