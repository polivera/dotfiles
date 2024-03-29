#!/usr/bin/env bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

###########################################################
# Create base folders in the home directory
# Arguments:
#   None
# Outputs:
#   None
###########################################################
function create_base_folders() {
    echo "Create base folders"
    mkdir $HOME/.config > /dev/null 2>&1
    mkdir $HOME/.local > /dev/null 2>&1
}

###########################################################
# Link Git configuration folder
# Arguments:
#   None
# Outputs:
#   None
###########################################################
function link_git_config_file() {
    echo "Linking Git config folder"
    rm -rf $HOME/.config/git 2> /dev/null
    ln -s  $SCRIPTPATH/configs/git $HOME/.config/git
}

###########################################################
# Link ZSH Configuration
# Arguments:
#   None
# Outputs:
#   None
###########################################################
function link_zsh_configs() {
    echo "Linking ZSH"
    rm -rf $HOME/.config/zsh
    rm $HOME/.zshrc 2&>/dev/null
    rm $HOME/.zshenv
    ln -s  $SCRIPTPATH/configs/zsh $HOME/.config/zsh
    ln -s  $HOME/.config/zsh/.zshenv $HOME/.zshenv
}

###########################################################
# Link Tmux Configuration
# Arguments:
#   None
# Outputs:
#   None
###########################################################
function link_tmux_config() {
    echo "Linking tmux"
    rm -rf $HOME/.config/tmux
    ln -s  $SCRIPTPATH/configs/tmux $HOME/.config/tmux
    if [[ ! -d $HOME/.config/tmux/plugins/tpm ]]; then
        echo "Installing TPM"
        git clone https://github.com/tmux-plugins/tpm $HOME/.config/tmux/plugins/tpm
    fi
}

###########################################################
# Link Personal Scripts Folder
# Arguments:
#   None
# Outputs:
#   None
###########################################################
function link_personal_scripts() {
    # Link Scripts
    echo "Linking Scripts"
    rm -rf $HOME/.local/scripts
    ln -s $SCRIPTPATH/configs/scripts $HOME/.local/scripts
}

###########################################################
# Install Starship for zsh
# Arguments:
#   None
# Outputs:
#   None
###########################################################
function install_starship_shell() {
    if command -v starship &>/dev/null; then
        echo "Starship already installed"
    else
        echo "Install starship shell"
        curl -sS https://starship.rs/install.sh | sh
        ln -s $SCRIPTPATH/configs/starship/starship.toml $HOME/.config/starship.toml
    fi
}

###########################################################
# Link Kitty Configuration
# Arguments:
#   None
# Outputs:
#   None
###########################################################
function link_kitty_config() {
    echo "Linking Kitty"
    rm -rf $HOME/.config/kitty
    ln -s  $SCRIPTPATH/configs/kitty $HOME/.config/kitty
}

###########################################################
# Link Chromium Configuration
# Arguments:
#   None
# Outputs:
#   None
###########################################################
function link_neovim_config() {
    echo "Link neovim config"
    rm -rf $HOME/.config/nvim
    ln -s $SCRIPTPATH/configs/nvim $HOME/.config/nvim
}

###########################################################
# Link Chromium Configuration
# Arguments:
#   None
# Outputs:
#   None
###########################################################
function link_chromium_browsers_config() {
    echo "Linking Chromium/Chrome"
    rm $HOME/.config/chromium-flags.conf
    rm $HOME/.config/chrome-flags.conf
    ln -s $SCRIPTPATH/configs/chromium/chromium-flags.conf $HOME/.config/chromium-flags.conf
    ln -s $SCRIPTPATH/configs/chromium/chromium-flags.conf $HOME/.config/chrome-flags.conf
}

# Call functions
create_base_folders
link_git_config_file
link_zsh_configs
install_starship_shell
link_tmux_config
link_personal_scripts
link_kitty_config
link_chromium_browsers_config
link_neovim_config
