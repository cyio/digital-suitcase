#!/bin/sh

echo "------------------"
echo "Configure ohMyZ.sh"
echo "------------------"
sed -i -e "s/plugins=(\.\*)/plugins=(git)/g" /home/vagrant/.zshrc

# printf "Making sure ownership rights are correct in vagrant user directory..."
# make sure everything in the vagrant directory is owned by vagrant
# chown -R vagrant:vagrant /home/vagrant --quiet
