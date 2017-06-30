#!/bin/bash

if [ -f /etc/redhat-release ]; then
fi

if [ -f /etc/lsb-release ]; then
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
  brew cask install iterm2
fi
