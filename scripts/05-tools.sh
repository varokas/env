#!/bin/bash

if [ -f /etc/redhat-release ]; then
  #nodejs
  curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
  sudo yum install -y nodejs

  #yarn
  sudo wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo
  sudo yum install -y yarn

  #cmd tools
  sudo yum install -y tmux
fi

if [ -f /etc/lsb-release ]; then
  apt-get update
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
  brew cask install teamviewer
  brew cask install lastpass
  brew cask install google-chrome

  brew install mas
  mas install 904280696 #Things 3
  mas install 409183694 #Keynote
fi
