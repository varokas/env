#!/bin/bash

if [ -f /etc/redhat-release ]; then
  #nodejs
  curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
  sudo yum install -y nodejs
fi

if [ -f /etc/lsb-release ]; then
  apt-get update
fi
