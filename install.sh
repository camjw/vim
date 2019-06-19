#! /bin/bash

ln -sf ~/.vim/.vimrc ~/.vimrc
git submodule sync
git submodule update --init
git submodule update --recursive --remote

echo "Vim configuration successfully installed"
