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
  brew cask install google-chrome
  brew cask install visual-studio-code
  brew cask install spectacle

  mas install 904280696 #Things 3

  mas install 926036361 #LastPass

  mas install 451907568 #Paprika Recipe Manager
  mas install 992076693 #MindNode 2 – Delightful Mind Mapping
  mas install 972572731 #Money Pro
  mas install 405399194 #Kindle
  mas install 539883307 #LINE

  #These things are re-downloading for no reason
  #mas install 409183694 #Keynote
  #mas install 408981434 #iMovie
fi
