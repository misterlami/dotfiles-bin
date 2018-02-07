#!/bin/bash

# taps
brew tap caskroom/cask
brew tap homebrew/services

brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php

brew doctor
brew update
brew upgrade


# brew installs
brew install ack
brew install gawk
brew install git
brew install httpie
brew install imagemagick
brew install jq #formats json output on command prompt
brew install nano
brew install openssl
brew install tmux
brew install tree
brew install vim
brew install wget

brew install bash
brew install zsh zsh-completions

brew install awscli
brew install azure-cli
brew install ansible

brew install go
brew install nvm
brew install composer

brew install mycli
brew install pgcli

brew install php72
brew install codeception psysh php-cs-fixer


brew cleanup


# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -sf ~/_bin/dot-files/zshrc ~/.zshrc #zsh

echo "****************************************"
echo "don't forget to remove extra space      "
echo "in \"steef theme\" PROMPT=$ (last line) "
echo "****************************************"
