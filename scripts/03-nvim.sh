#!/bin/bash

### Install NVIM
if [ -f /etc/redhat-release ]; then
  #Prereqs 
  sudo yum -y install libtool autoconf automake cmake gcc gcc-c++ make pkgconfig unzip  
  if [ ! -f ~/neovim ]; then 
     git clone --branch v0.1.7 https://github.com/neovim/neovim.git ~/neovim
  fi
  if [ ! -f /usr/local/bin/nvim ]; then
    make -C ~/neovim
    sudo make -C ~/neovim install
  fi 
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  if [ ! -f ~/.config/nvim ]; then
    mkdir -p ~/.config/nvim 
  fi

  ln -sf ~/.env/files/init.vim ~/.config/nvim/init.vim
fi

if [ -f /etc/lsb-release ]; then
  apt-get update
fi
