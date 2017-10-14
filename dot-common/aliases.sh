## aliases ##

# Color ls - "-G" enables colors flag
alias l="ls -lF -G" # all files, in long format
alias ll="ls -laF -G" # all files inc dotfiles, in long format
alias ld="ls -lF -G | grep '^d'" # only directories
alias lld="ls -laF -G | grep '^d'" # only directories inc dotfiles

# Quicker navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Shortcuts to folders
alias h="cd ~/"
alias hb="cd ~/_bin"
alias hs="cd ~/_ssh"
alias hd="cd ~/Downloads"
alias ha="cd ~/apps"
alias dl="cd ~/apps/logiq-one"
alias mx="cd ~/apps/munetrix"
alias sg="cd ~/apps/scigames"

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Shortcuts for misc commands
alias cl="clear"
alias clearcache="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say cache flushed"
alias cpd="cp -aR" #copy directory
alias p="ping -c 5"
alias psy="psysh"
alias rmd="rm -rf" #delete directory
alias rdel="recursively_delete_files_ending_with"
alias renamelower='for f in *; do mv "$f" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done'
alias renameupper='for f in *; do mv "$f" "`echo $f | tr "[:lower:]" "[:upper:]"`"; done'
alias serve="php -S localhost:8000" # use -t to specify different doc root
alias subl='open -a "Sublime Text"'
alias updatehosts="sudo bash -c 'cat ~/_ssh/hosts > /private/etc/hosts'"
alias wanip="dig +short myip.opendns.com @resolver1.opendns.com"

alias aliases="c ~/_bin/dot-common/aliases.sh"
alias brews="c ~/_bin/install-brew.sh"
alias casks="c ~/_bin/install-cask.sh"
alias functionz="c ~/_bin/dot-common/help-functions.sh"
alias hosts="c ~/_ssh/hosts"
alias sourcebash="source ~/.bashrc"
alias sourcezsh="source ~/.zshrc"
alias sourcebin="source ~/_bin/install.sh"
alias sourcessh="source ~/_ssh/install.sh"
alias sourceall="sourcezsh && sourcebin && sourcessh"

# Colored cat! // install Pygments first - "sudo easy_install Pygments"
alias c='pygmentize -O style=monokai -f console256 -g'

# NPM & Node
alias nlist='npm list -g --depth=0'

# Composer & PHP
alias clist='composer global show'
alias art='php artisan'

# Git
alias g='git'
alias gs='git status -sb'
alias gs2='git diff --name-status master..$(git rev-parse --abbrev-ref HEAD)' #diff current branch with master
alias gl='git log --oneline --decorate --graph' #-5 (show commit messages)
alias gl2='git log --oneline --decorate --graph --name-only' #-5 (show commit messages and files changed)
alias gl3='git shortlog -s -n -e' #show total number of commits for each user
alias gl4="git log --graph -10 --branches --remotes --tags  --format=format:'%Cgreen%h %Creset• %<(75,trunc)%s (%cN, %cr) %Cred%d' --date-order" #whos been working on last 10 commits (basically who's working on what now)
alias ga='git add --all'
alias gc='git commit -m'
alias gc2='git commit -m --amend'
alias gp='git push'
alias gpl='git pull'
alias gcl='git clone'
alias gco='git checkout'
alias gpspring='gp spring && gp'
alias grh='g reset --hard origin/master'

# Vagrant
alias v='vagrant'
alias vs='vagrant status'
alias vu='vagrant up'
alias vd='vagrant destroy -f'
alias vh='vagrant halt'
alias vsh='vagrant ssh'
alias vg='vagrant global-status'
alias vgp='vg --prune'

# Homebrew & Cask
alias b='brew'
alias bs='brew search'
alias bin='brew install'
alias bun='brew uninstall'
alias bcl='brew update; brew upgrade; brew cleanup; brew cask cleanup'
alias bc='brew cask'
alias bcs='brew cask search'
alias bcin='brew cask install'
alias bcun='brew cask uninstall'


## paths ##
export PATH="$HOME/.composer/vendor/bin:$PATH"
#export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"
export NVM_DIR=~/.nvm && source $(brew --prefix nvm)/nvm.sh
export DOTNET_CLI_TELEMETRY_OPTOUT=1
