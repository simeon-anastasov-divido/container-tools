#!/bin/sh

export TOOLS="bash less vim curl aws-cli yq jq screen mandoc man-pages busybox-extras iproute2"

# install packages

if [[ $(which apk) -eq 0 ]]; then
  apk update && apk add $TOOLS 
fi

if [[ $(which apt) -eq 0 ]]; then
  apt upgrade && apt update && apt install $TOOLS 
fi

# download external tools

## Install Vim Plugin Manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# setup configurations

## screen
cp conf/.screenrc ~/.screenrc
## vim
cp conf/.vimrc ~/.vimrc
## bash
cp conf/.bashrc ~/.bashrc
