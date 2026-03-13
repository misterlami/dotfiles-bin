#!/bin/bash

brew analytics off
brew update && brew upgrade

# utilities (terminal)
brew install bat eza fd fzf gh git git-lfs git-delta lazygit teleport
brew install curl httpie wget ripgrep ast-grep jq universal-ctags
brew install btop gdu micro yazi
brew install zoxide zsh zsh-autosuggestions zsh-syntax-highlighting
brew install ffmpeg pandoc yt-dlp

# REPLs, dependency managers, fonts
brew install psysh ptpython
brew install composer nvm uv rust
brew install font-doto font-bevan font-geist-mono font-hasklig
brew install hugo netlify-cli

# utilities (desktop)
brew install raycast workflowy warp iterm2
brew install snagit camtasia
brew install bloom hiddenbar
brew install appcleaner elmedia-player imageoptim itsycal kid3 namechanger
brew install displaylink flux-app
brew install google-drive

# web
brew install google-chrome@dev opera
brew install microsoft-teams whatsapp zoom
brew install cloudflare-warp tunnelbear

# design tools
brew install affinity figma

# dev tools
brew install dbeaver-enterprise navicat-premium
brew install bruno httpie-desktop transmit
brew install codex codex-app kilo-org/tap/kilo
brew install visual-studio-code windsurf
#brew install dotnet-sdk temurin@21

# devops tools
brew install protonpass/tap/protonpass
brew install ansible awscli vultr
brew install podman podman-compose podman-desktop
#colima docker docker-compose docker-desktop

# AI tools
brew install lm-studio #ollama #osaurus
brew install wispr-flow superwhisper

# installs & settings
git lfs install
nvm install --lts
npm install -g five-server
composer global require laravel/installer laravel/pint

# tryouts & chopping block
brew install openspec kimi-cli qspace-pro
cargo install laramux

# cleanup
brew cleanup --prune=all
