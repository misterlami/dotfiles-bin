#!/bin/bash

# taps
brew tap caskroom/versions
brew tap caskroom/fonts

brew cask doctor


#fonts
brew cask install font-fira-code font-fira-sans font-fira-mono font-fira-mono-for-powerline
brew cask install font-nexa
brew cask install font-open-sans font-open-sans-condensed
brew cask install font-source-code-pro font-source-code-pro-for-powerline


# utility apps
brew cask install bartender
brew cask install caffeine
brew cask install itsycal

# brew cask install atext
# brew cask install alfred
brew cask install moom
# brew cask install totalfinder

brew cask install iterm2
brew cask install keka
brew cask install namechanger
brew cask install imageoptim

brew cask install launchpad-manager-yosemite
brew cask install quicklook-json
brew cask install wallpaper-wizard

brew cask install cloudup
brew cask install cleanmymac
brew cask install snagit
brew cask install camtasia
brew cask install screenflow

# media apps
brew cask install audacity
brew cask install vlc

# office tools
brew cask install macdown

# cloud & web apps
brew cask install dropbox
brew cask install google-chrome
brew cask install google-backup-and-sync
brew cask install resilio-sync
brew cask install transmission

# communication tools
brew cask install slack
brew cask install skype
brew cask install textual

# devops tools
brew cask install vmware-fusion
brew cask install virtualbox
brew cask install vagrant

brew cask install cornerstone
brew cask install tower
brew cask install transmit

brew cask install navicat-premium
brew cask install mysqlworkbench

# dev tools
brew cask install sketch
brew cask install sublime-text
brew cask install visual-studio-code

brew cask install coderunner
brew cask install dash
brew cask install kaleidoscope
brew cask install postman

brew cask install ngrok
brew cask install google-cloud-sdk


brew cask cleanup
defaults write com.runningwithcrayons.Alfred-Preferences dropbox.allowappsfolder -bool TRUE
defaults write com.runningwithcrayons.Alfred-Preferences-3 dropbox.allowappsfolder -bool TRUE
