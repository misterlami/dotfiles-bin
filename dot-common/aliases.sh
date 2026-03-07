## aliases ##

# colored directory listing (a better ls)
alias ls="eza --group-directories-first --octal-permissions --ignore-glob='.DS_Store'"
alias l="ls -a"
alias ll="ls -la"
alias ld="ls -lD"
alias lld="ls -laD"
alias lt="ls --tree --level=2"

# quick navigation shortcuts
alias ..="cd .."
alias ...="cd ../.."

# folder shortcuts
alias h="cd ~/"
alias hb="cd ~/_bin"
alias hs="cd ~/_ssh"
alias hd="cd ~/Downloads"
alias hc="cd ~/Downloads/code"

# misc helpful commands
alias sudo="sudo " # enables aliases to be sudo'ed
alias which="which " # enables aliases to be which'ed
alias cl="clear"
alias clhist="history -c && rm ~/.zsh_history && exec zsh"
alias cpd="cp -aR" # copy directory
alias rmd="rm -rf" # delete directory
alias purge="sudo purge"
alias ip="ifconfig | grep 'inet ' | awk '{print $2}'"
alias ip2="curl ifconfig.co"
alias p="ping -c 3"
alias updatehosts="sudo bash -c 'cat ~/_ssh/hosts > /private/etc/hosts'"
alias aliases="cc ~/_bin/dot-common/aliases.sh"
alias functionz="cc ~/_bin/dot-common/help-functions.sh"
alias sourcebash="source ~/.bashrc"
alias sourcezsh="source ~/.zshrc"

alias c="bat --theme=1337" # enhanced cat
alias cc="bat --theme=1337 --style=plain --paging=never" # enhanced cat
alias f="fd" # enhanced find
alias gdu="gdu-go"
alias pass="pass-cli"
alias serve="php -S localhost:8000" # use -t to specify different doc root
alias fserve="five-server --php='/opt/homebrew/bin/php'"
alias hserve="hugo server -D -p 9000"
alias ytd="yt-dlp -f 'bestvideo+bestaudio' --merge-output-format mp4"

function enter() { mkdir $1 && cd $1 }
function hugo-post() { hugo new "posts/$1.md" }

# apps
alias make_forklift_default_finder="defaults write -g NSFileViewer -string com.binarynights.ForkLift && defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType="public.folder";LSHandlerRoleAll="com.binarynights.ForkLift";}'"
alias unmake_forklift_default_finder="defaults delete -g NSFileViewer && defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers  -array-add '{LSHandlerContentType="public.folder";LSHandlerRoleAll="com.apple.finder";}'"

# repls
alias py="ptpython"
alias ph="psysh"
alias pip="pip3"
alias python="python3"
alias art="php artisan"

# list globally installed packages
alias plist="pip3 list" # pip & python
alias clist="composer global show" # composer & php
alias nlist="npm list -g --depth=0" # npm & node

# homebrew
alias b="brew"
alias bs="brew search"
alias bi="brew install"
alias bu="brew uninstall"
alias bcl="brew update && brew upgrade && brew cleanup prune=all"
alias bls="brew list | rg"

# git
alias g="git"
alias gs="git status -sb"
alias ga="git add --all"
alias gc="git commit -m"
alias gb="git branch"
alias gsw="git switch"
alias gp="git push"
alias gpl="git pull"
alias gcl="git clone"
alias gco="git checkout"
alias grh="g reset --hard"
alias gl="git log --oneline --decorate --graph -8" # (show commit messages)
alias gl2="git log --oneline --decorate --graph --name-only -8" # (show commit messages and files changed)
alias gl3="git shortlog -s -n -e" # show contributors and their total # of commits
alias gl4="git log --graph -10 --branches --remotes --tags --format=format:'%Cgreen%h %Creset• %<(60,trunc)%s (%cN, %cr) %Cred%d' --date-order" #whos been working on last 10 commits (basically who's working on what now)

# docker & podman
alias p="podman"
alias pc="podman-compose"
alias d="docker"
alias dc="docker-compose"
alias docker="podman"
alias docker-compose="podman-compose"

# miscellany
alias vul=vultr
alias osa=osaurus

## paths
export PATH="$HOME/.cargo/bin:$PATH" # rust
export PATH="$HOME/.composer/vendor/bin:$PATH" # composer
export NVM_DIR="$HOME/.nvm" && source "$(brew --prefix)/opt/nvm/nvm.sh" && source "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # nvm
