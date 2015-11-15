#!/bin/sh

if [ ! -f /usr/bin/rcelasticsearch ];
then
    echo "------------------------"
    echo "Installing elasticsearch"
    echo "------------------------"

    sudo apt-get install openjdk-7-jre-headless -y

    wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-$1.deb
    sudo dpkg -i elasticsearch-$1.deb

    curl -L http://github.com/elasticsearch/elasticsearch-servicewrapper/tarball/master | tar -xz
    sudo mv *servicewrapper*/service /usr/share/elasticsearch/bin/
    rm -Rf *servicewrapper*
    sudo /usr/share/elasticsearch/bin/service/elasticsearch install
    sudo ln -s `readlink -f /usr/share/elasticsearch/bin/service/elasticsearch` /usr/bin/rcelasticsearch
fi