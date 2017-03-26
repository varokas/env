#!/bin/bash
if [ -f /etc/redhat-release ]; then
  sudo yum install -y epel-release
  sudo yum install -y  git
fi

if [ -f /etc/lsb-release ]; then
  apt-get update
fi
