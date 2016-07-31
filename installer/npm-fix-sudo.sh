mkdir ~/.npm-packages
npm config set prefix '~/.npm-packages'
vim ~/.profile
# add following line
export PATH=~/.npm-packages/bin:$PATH
source ~/.profile
# check
npm config get config
