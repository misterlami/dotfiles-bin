## functions ##

function fix_steeef_ohmyzsh_theme() {
    sed -i '' -e ':a' -e 'N' -e '$!ba' -e "s/PROMPT=\$'\\n/PROMPT=\$'/g" ~/.oh-my-zsh/themes/steeef.zsh-theme
}

function name_mac() {
    local MACNAME

    if [ -z "$1" ]; then
        MACNAME="lamz-macbook"
    else
        MACNAME=$1
    fi

    sudo scutil --set ComputerName "$MACNAME"
    sudo scutil --set LocalHostName "$MACNAME"
    sudo scutil --set HostName "$MACNAME"
    sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$MACNAME"
    sudo dscacheutil -flushcache
}

function is_homebrew_installed() {
    if type brew > /dev/null; then
        return 0
    else
        echo "Homebrew is not installed.  Run the command 'install_homebrew' to install it"
        return 1
    fi
}

function install_homebrew() {
    if ! is_homebrew_installed; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    fi
}

function install_homebrew_apps() {
    echo "*** installing homebrew apps ***"
    source ~/_bin/install-brew.sh
    eval "$(/opt/homebrew/bin/brew shellenv)" 2>/dev/null || true #so you can use it immediately
}

function install_terminal_helpers() {
    # install hush login
    echo "*** installing hushlogin ***"
    touch ~/.hushlogin && echo "# This file prevents the shell login message from appearing" >> ~/.hushlogin

    # install oh-my-zsh
    echo "*** installing oh-my-zsh ***"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
}

function list_all_installs() {
    echo '=============================================================='
    echo ' Available Installations (run "new_mac_setup" to install all) '
    echo '=============================================================='
    echo 'install_terminal_helpers - installs hushlogin & oh-my-zsh'
    echo ''
    echo 'install_brew - installs homebrew'
    echo 'install_homebrew_apps - installs misc homebrew apps'
    echo '=============================================================='
}

function new_mac_setup() {
    install_terminal_helpers
    install_homebrew
    install_homebrew_apps
}
