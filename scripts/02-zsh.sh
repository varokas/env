#!/bin/bash


### Install ZSH
if [ -f /etc/redhat-release ]; then
  sudo yum install -y zsh
fi

if [ -f /etc/lsb-release ]; then
  apt-get update
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
  brew install zsh
fi

### Common
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

ln -sf ~/.env/files/zlogin ~/.zlogin
ln -sf ~/.env/files/zlogout ~/.zlogout
ln -sf ~/.env/files/zpreztorc ~/.zpreztorc
ln -sf ~/.env/files/zprofile ~/.zprofile
ln -sf ~/.env/files/zshenv ~/.zshenv
ln -sf ~/.env/files/zshrc ~/.zshrc

chsh -s /bin/zsh
