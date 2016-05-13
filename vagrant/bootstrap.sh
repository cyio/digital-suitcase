#!/usr/bin/env bash

# This boolean is used for load bash or zsh in your CLI environment
# By default is loaded .bashrc, if you would like to use .zsh + oh-my-zsh in your CLI
# modify the value for true
INCLUDE_ZSH=false

sudo apt-get update -y
sudo apt-get install -y curl git git-core tmux

# Update NPM
# npm install -g npm@latest
npm install -g npm@2.11.2

# Install Node Packages
#npm install -g cordova
#npm install -g ionic
#npm install -g ios-sim
npm install -g yo
npm install -g bower
npm install -g grunt-cli
npm install -g jshint
npm install -g protractor
npm install -g gulp
npm install -g karma
npm install -g trash

# Install Yeoman Generator


echo ""
echo ">>> NodeJS: ✔"
echo ""


echo ""
echo ">>> CLI Configurations..."
echo ""

# Add .function, .aliases and Z files in box
curl -L http://goo.gl/2e3iWT > .functions
curl -L http://goo.gl/ii1v3n > .aliases
curl -L http://goo.gl/AXbM5B > z.sh

# ...zsh/bash verification ...

CLI_LOAD_FILE=~/.bashrc
if [ "$INCLUDE_ZSH" = true ] ; then
  # Zsh and Oh-My-Zsh installation
  CLI_LOAD_FILE=~/.zshrc
  sudo apt-get install -y zsh
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
  cp ~/.oh-my-zsh/templates/zshrc.zsh-template $CLI_LOAD_FILE
  sudo chsh -s /bin/zsh vagrant
  zsh
fi

# Add new contents in .zshrc/.bashrc
echo "" >> $CLI_LOAD_FILE
echo "" >> $CLI_LOAD_FILE
echo " # Source global definitions" >> $CLI_LOAD_FILE
echo "if [ -f ~/.functions ]; then" >> $CLI_LOAD_FILE
echo "  . ~/.functions" >> $CLI_LOAD_FILE
echo "fi" >> $CLI_LOAD_FILE
echo "" >> $CLI_LOAD_FILE
echo " # Source global definitions" >> $CLI_LOAD_FILE
echo "if [ -f ~/.aliases ]; then" >> $CLI_LOAD_FILE
echo "  . ~/.aliases" >> $CLI_LOAD_FILE
echo "fi" >> $CLI_LOAD_FILE
echo "" >> $CLI_LOAD_FILE
echo "# Include Z, yo file" >> $CLI_LOAD_FILE
echo ". ~/z.sh" >> $CLI_LOAD_FILE
echo "" >> $CLI_LOAD_FILE
echo "" >> $CLI_LOAD_FILE
echo "export NVM_DIR=\"\$HOME/.nvm\"" >> $CLI_LOAD_FILE
echo "#Add new values from variable environment" >> $CLI_LOAD_FILE
echo "JAVA_HOME=/usr/lib/jvm/java-7-openjdk-i386/jre/bin/java" >> $CLI_LOAD_FILE
echo "ANDROID_HOME=~/android-sdk-linux/sdk" >> $CLI_LOAD_FILE
echo "export PATH=\$PATH:~/android-sdk-linux/tools:~/android-sdk-linux/platform-tools:\$NVM_DIR/bin" >> $CLI_LOAD_FILE
# This loads nvm
echo "[[ -s \"\$NVM_DIR/nvm.sh\" ]] && . \"\$NVM_DIR/nvm.sh\"" >> $CLI_LOAD_FILE

source $CLI_LOAD_FILE


echo ""
echo ">>> CLI Configurations: ✔"
echo ""


cd /vagrant_data && git clone https://github.com/willmendesneto/angularjs-course.git

echo ""
echo ">>> STATUS: ✔"
echo ""
echo "ALIAS:"
echo ""
echo "vd: alias for \"cd /vagrant_data\""
echo ""
echo ""
echo ">>> So, let's code!"
echo ""
