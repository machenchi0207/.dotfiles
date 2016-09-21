#!/usr/bin/env bash

set -e

if [ ! -f ~/.dotfiles/install.sh ]; then
  echo "Cloning repo..."
  git clone https://github.com/mjacobus/.dotfiles.git ~/.dotfiles
fi

source ~/.dotfiles/installer/config.sh

if (( $# == 1 )); then
  dotfile_install $1
  exit 0
fi

dotfile_install all
