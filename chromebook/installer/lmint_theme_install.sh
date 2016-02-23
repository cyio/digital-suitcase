#!/bin/bash

echo "Adding PPAs"

sudo add-apt-repository -y ppa:noobslab/themes 
sudo add-apt-repository -y ppa:noobslab/icons

echo "updating repositories"
sudo apt-get -y -q update

echo "Installing packages"

sudo apt-get -y -q install lmint-theme lmint-icons

echo "Finished adding PPAs and insatlling applications"
exit 0