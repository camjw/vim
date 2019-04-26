#! /bin/bash

ln -sf ~/.vim/.vimrc ~/.vimrc
git submodule update --init
git submodule update --recursive --remote

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo ${machine}

if [ ${machine} = Mac ]
then
	echo "Running on OSX, installing df font"
	cp ~/.vim/fonts/df_font.ttf ~/Library/Fonts/
fi

echo "Vim configuration successfully installed"
