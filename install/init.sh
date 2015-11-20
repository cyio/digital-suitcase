#!/bin/sh

mv /etc/apt/sources.list sources.list.bk
cp /vagrant/sources.list /etc/apt/
apt-get update
# apt-get install silversearcher-ag
