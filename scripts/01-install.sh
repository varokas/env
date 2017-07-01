#!/bin/bash
if [ -f /etc/redhat-release ]; then
  sudo yum install -y epel-release
  sudo yum install -y git
  sudo yum install -y vim
fi

if [ -f /etc/lsb-release ]; then
  apt-get update
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
  brew install mas
fi

