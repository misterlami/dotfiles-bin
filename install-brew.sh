#!/bin/bash

brew analytics off
brew update && brew upgrade && brew cleanup

# utilities (terminal)
brew install bat eza fd fzf gh git git-lfs git-delta lazygit
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
brew install forklift hiddenbar
brew install appcleaner elmedia-player imageoptim itsycal keka kid3 namechanger
brew install displaylink flux-app
brew install google-drive

# web
brew install google-chrome@dev opera
brew install microsoft-teams whatsapp zoom
brew install cloudflare-warp tunnelbear

# design tools
brew install affinity figma

# data tools
brew install navicat-premium dbeaver-enterprise
brew install transmit

# dev tools
brew install bruno httpie-desktop
brew install codex codex-app kilo-org/tap/kilo
brew install visual-studio-code windsurf
brew install dotnet-sdk temurin@21

# devops tools
brew install ansible awscli vultr protonpass/tap/protonpass
brew install podman podman-compose podman-desktop
#colima docker docker-compose docker-desktop

# AI tools
brew install ollama osaurus
brew install wispr-flow superwhisper

# installs & settings
git lfs install
nvm install --lts
npm install -g five-server
composer global require laravel/installer laravel/pint

# tryouts
brew install microsoft-edge@dev
cargo install laramux
npm install -g @fission-ai/openspec@latest

# cleanup
brew cleanup --prune=all
