#!/bin/bash

# vimrc configuration
echo "Updating ~/.vimrc and ~/.vim"
cp $PWD/vim/vimrc ~/.vimrc

# update vim
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

# installing Vundle
mkdir -p ~/.vim/bundle/Vundle.vim
cp -r $PWD/vim/Vundle.vim ~/.vim/bundle
vim +PluginInstall +qall

# installing YouCompleteMe
sudo apt-get install build-essential cmake
sudo apt-get install python-dev python3-dev
sudo cp -rf $PWD/vim/YouCompleteMe ~/.vim/bundle/YouCompleteMe
sudo cp -rf $PWD/vim/YouCompleteMe/third_party/ycmd/* ~/.vim/bundle/YouCompleteMe/third_party/ycmd/*
python ~/.vim/bundle/YouCompleteMe/install.py --clang-completer

# bashrc configuration
echo "Updating ~/.bashrc"
cp $PWD/bash/bashrc ~/.bashrc
source ~/.bashrc

# terminator configuration
echo "Updating ~/.config/terminator"
mkdir -p ~/.config/terminator
cp $PWD/terminator/terminator_config ~/.config/terminator/config
