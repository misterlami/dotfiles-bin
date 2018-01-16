#!/bin/bash

# ask for the administrator password upfront.
sudo -v

# setup aliases (-f: remove existing file, -n: don't replace existing symlink)
echo "Aliasing dotfiles..."
ln -sf ~/_bin/dot-files/bashrc ~/.bashrc
ln -sf ~/_bin/dot-files/bash_profile ~/.bash_profile
ln -sf ~/_bin/dot-files/gitconfig ~/.gitconfig
ln -sf ~/_bin/dot-files/gitignore ~/.gitignore
ln -sf ~/_bin/dot-files/nanorc ~/.nanorc

# source rc file
echo "Sourcing aliased dotfiles..."
if [ "$(echo $SHELL)" == "/bin/zsh" ]; then
    source ~/.zshrc
else
    source ~/.bashrc
fi

echo '=============================================================='
echo 'run "clean_mac_setup" if this is a fresh mac installation'
echo '-OR-'
echo 'run “list_all_installs” - to view setups/installations available'
echo '=============================================================='
