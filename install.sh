#!/bin/bash

echo "Aliasing dotfiles..."
ln -sf ~/_bin/dot-files/zshrc ~/.zshrc
ln -sf ~/_bin/dot-files/vimrc ~/.vimrc
ln -sf ~/_bin/dot-files/gitconfig ~/.gitconfig
ln -sf ~/_bin/dot-files/gitignore ~/.gitignore
ln -sf ~/_bin/dot-files/editorconfig ~/.editorconfig
ln -sf ~/_bin/dot-files/prettierrc ~/.prettierrc

if command -v code >/dev/null 2>&1; then
    echo "Aliasing vscode settings..."
    ln -sf "$HOME/_bin/vscode-settings/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
    ln -sf "$HOME/_bin/vscode-settings/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"
else
  echo "VS Code is not installed (code command not found)"
fi

# source rc file
echo "Sourcing aliased dotfiles..."
if [[ "$0" == "-zsh" ]]; then source ~/.zshrc; fi
if [[ "$0" == "-bash" ]]; then source ~/.bashrc; fi

echo '==================================================================='
echo '1. source ~/.zshrc'
echo '2. run "install_terminal_helpers" to install ohmyzsh'
echo '3. run "list_all_installs" - to view setups/installations available'
echo '==================================================================='
