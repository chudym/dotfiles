#!/bin/bash

success() { echo "$(tput setaf 2)DONE$(tput sgr0)"; }

dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $dir
olddir=~/dotfiles_old
files="bashrc vimrc vim emacs gitconfig aliases"

echo -n 'Updating submodules...'
git submodule init
git submodule update --recursive
success

echo -n "Creating symlinks... "
mkdir -p $olddir
cd $dir
for file in $files; do
  if [ -f ~/.$file ]
  then
    mv ~/.$file $olddir/
  fi
    ln -s $dir/$file ~/.$file
done
success

echo -n "Installing vim plugins... "
vim +PluginInstall +qall
success

echo -n "Installing fonts... "
fonts/powerline/install.sh
success
