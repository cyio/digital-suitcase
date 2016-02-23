#!/bin/bash
# Uninstall LibreOffice
sudo apt-get remove libreoffice*
# Download LibreOffice 4.3.1
wget -cO LO431.tar.gz http://ftp.osuosl.org/pub/tdf/libreoffice/stable/4.3.1/deb/x86_64/LibreOffice_4.3.1_Linux_x86-64_deb.tar.gz
# Creating a simplified directory LO431
mkdir LO431
# Unpack LO431.tar.gz
tar --strip-component 1 -xzvC LO431 -f LO431.tar.gz
# Install LibreOffice 4.3.1
sudo dpkg -i LO431/DEBS/*.deb
# Download Chinese User Interface
wget -qO LO431CN.tar.gz http://download.documentfoundation.org/libreoffice/stable/4.3.1/deb/x86_64/LibreOffice_4.3.1_Linux_x86-64_deb_langpack_zh-CN.tar.gz | tar xz
# Creating a simplified directory LO431CN
mkdir LO431CN
# Unpack LO431CN.tar.gz
tar --strip-component 1 -xzvC LO431CN -f LO431CN.tar.gz
# Install Chinese User Interface
sudo dpkg -i LO431CN/DEBS/*.deb
