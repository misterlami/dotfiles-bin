#!/bin/bash

echo "Aliasing dotfiles..."
ln -sf ~/_bin/dot-files/zshrc ~/.zshrc
ln -sf ~/_bin/dot-files/vimrc ~/.vimrc
ln -sf ~/_bin/dot-files/gitconfig ~/.gitconfig
ln -sf ~/_bin/dot-files/gitignore ~/.gitignore
ln -sf ~/_bin/dot-files/editorconfig ~/.editorconfig
ln -sf ~/_bin/dot-files/prettierrc ~/.prettierrc

echo "Aliasing other application settings"
ln -sf ~/_bin/app-settings/kilo.jsonc ~/.config/kilo/kilo.jsonc
if command -v code >/dev/null 2>&1; then
    echo "Aliasing vscode settings..."
    ln -sf "$HOME/_bin/app-settings/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
    ln -sf "$HOME/_bin/app-settings/vscode/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"
else
  echo "VS Code is not installed (code command not found)"
fi

echo "Sourcing aliased dotfiles..."
if [[ "$0" == "-zsh" ]]; then source ~/.zshrc; fi

echo '==================================================================='
echo '1. source ~/.zshrc'
echo '2. run "install_terminal_helpers" to install ohmyzsh'
echo '3. run "list_all_installs" - to view setups/installations available'
echo '==================================================================='
