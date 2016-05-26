#!/bin/sh

cd ~
mv .vim .vim.bk
mv .vimrc .vimrc.bk
git clone https://github.com/krampstudio/webvim.git ~/.vim

echo "在Vim中执行 PlugInstall YouCompleteMe"

sudo apt-get install python-dev python3-dev -y
sudo apt-get install build-essential cmake -y

cd .vim/plugins/plugged/YouCompleteMe
git submodule update --init --recursive
./install.py --tern-completer