sudo ln -s $(npm root -g)/npm/bin/npm-cli.js $(dirname $(which npm))/npm-original
sudo npm install --global smart-npm --registry=https://registry.npm.taobao.org/
