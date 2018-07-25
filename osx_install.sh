#!/bin/bash

echo "Installing homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing zsh..."
brew install zsh zsh-completions

echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Updating vim..."
brew install vim --with-luajit

echo "Installing basic UNIX tools..."
brew install coreutils htop wget
brew install grep
brew install openssh
brew install screen
brew install git

brew cleanup
