#!/bin/bash

###########################################################
# Creates symlinks and backup of old dotfiles and installs
# all vim plugins
###########################################################

dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc vimrc vim emacs"

echo -n "Creating symlinks... "
mkdir -p $olddir
cd $dir

for file in $files; do
    mv ~/.$file $olddir/
    ln -s $dir/$file ~/.$file
done
echo "$(tput setaf 2)DONE$(tput sgr0)"

echo -n "Installing vim plugins... "
vim +PluginInstall +qall
echo "$(tput setaf 2)DONE$(tput sgr0)"
