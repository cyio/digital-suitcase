#!/bin/sh

if [ ! -f /usr/bin/nvim ];
then
    echo "--------------"
    echo "Installing NeoVim"
    echo "--------------"
    
    add-apt-repository ppa:neovim-ppa/unstable -y
    apt-get update
    apt-get install -y --force-yes neovim python-dev python-pip python3-dev python3-pip
fi