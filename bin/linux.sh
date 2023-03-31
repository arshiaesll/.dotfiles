#!/bin/bash

if [ "$(uname)" != "Linux" ]; then
	echo "Hey You are not Linux" > linuxsetup.log	
fi

mkdir -p ~/.TRASH

if [[ -f "$HOME/.vimrc" ]]; then
	mv ~/.vimrc ~/.bup_vimrc


fi

echo "Current .vimrc file changed to .bup_vimrc" >> ./linuxsetup.log
cat ./etc/vimrc > ~/.vimrc 

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc


