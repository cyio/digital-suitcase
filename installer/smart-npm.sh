sudo ln -s $(npm root -g)/npm/bin/npm-cli.js $(dirname $(which npm))/npm-original
npm install --global smart-npm --registry=https://registry.npm.taobao.org/
