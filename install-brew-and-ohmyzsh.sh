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
brew install ack gawk
brew install git openssl
brew install httpie wget
brew install imagemagick tree
brew install jq #formats json output on command prompt
brew install nano vim
brew install bash zsh zsh-completions

brew install nvm composer
brew install php72 python python3

brew install mycli pgcli
brew install awscli azure-cli ansible


brew cleanup


# install oh-my-zsh
echo "****************************************"
echo "installing ohmyzsh                      "
echo "****************************************"
echo "don't forget to remove extra space      "
echo "in \"steef theme\" PROMPT=$ (last line) "
echo "****************************************"
ln -sf ~/_bin/dot-files/zshrc ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
