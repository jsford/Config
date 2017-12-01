#!/bin/bash

# Link to ~/.vimrc
echo "Creating symlink to ~/.vimrc"
ln -s -f $PWD/vimrc ~/.vimrc

# Link to ~/.bashrc
echo "Creating symlink to ~/.bashrc"
ln -s -f $PWD/bashrc ~/.bashrc
source ~/.bashrc

# Link to ~/.config/terminator
echo "Creating symlink to ~/.config/terminator"
ln -s -f $PWD/terminator_config ~/.config/terminator/config
