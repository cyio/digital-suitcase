#!/bin/sh

echo "------------------"
echo "Configure ohMyZ.sh"
echo "------------------"
sed -i -e "s/plugins=(\.\*)/plugins=(git)/g" /home/vagrant/.zshrc