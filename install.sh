#!/usr/bin/env bash

SCRIPTPATH="$(
	cd -- "$(dirname "$0")" >/dev/null 2>&1
	pwd -P
)"

###########################################################
# Create base folders in the home directory
# Arguments:
#   None
# Outputs:
#   None
###########################################################
function create_base_folders() {
	echo "Create base folders"
	mkdir $HOME/.config >/dev/null 2>&1
	mkdir $HOME/.local >/dev/null 2>&1
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
	rm -rf $HOME/.config/git 2>/dev/null
	ln -s $SCRIPTPATH/configs/git $HOME/.config/git
}

###########################################################
# Link SSH configuration
# Arguments:
#   None
# Outputs:
#   None
###########################################################
function link_ssh_config_file() {
	echo "Linking SSH config folder"
	mkdir $HOME/.ssh 2>/dev/null
	rm -rf $HOME/.ssh/config 2>/dev/null
	ln -s $SCRIPTPATH/configs/ssh/config $HOME/.ssh/config
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
	rm $HOME/.zshrc 2>/dev/null
	rm $HOME/.zshenv 2>/dev/null
	ln -s $SCRIPTPATH/configs/zsh $HOME/.config/zsh
	ln -s $HOME/.config/zsh/.zshenv $HOME/.zshenv
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
	rm -rf $HOME/.config/tmux 2>/dev/null
	ln -s $SCRIPTPATH/configs/tmux $HOME/.config/tmux
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
	rm -rf $HOME/.local/scripts 2>/dev/null
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
		curl -sS https://starship.rs/install.sh | sh -s -- -y
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
	rm -rf $HOME/.config/kitty 2>/dev/null
	ln -s $SCRIPTPATH/configs/kitty $HOME/.config/kitty
}

###########################################################
# Link Alacritty Configuration
# Arguments:
#   None
# Outputs:
#   None
###########################################################
function link_alacritty_config() {
	echo "Linking Kitty"
	rm -rf $HOME/.config/alacritty 2>/dev/null
	ln -s $SCRIPTPATH/configs/alacritty $HOME/.config/alacritty
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
	rm $HOME/.config/chromium-flags.conf 2>/dev/null
	rm $HOME/.config/chrome-flags.conf 2>/dev/null
	ln -s $SCRIPTPATH/configs/chromium/chromium-flags.conf $HOME/.config/chromium-flags.conf
	ln -s $SCRIPTPATH/configs/chromium/chromium-flags.conf $HOME/.config/chrome-flags.conf
}

###########################################################
# Link Steam configuration
# Arguments:
#   None
# Outputs:
#   None
###########################################################
function link_steam_config() {
	echo "Linking Steam configuration"
	mkdir -p $HOME/.steam/steam
	rm $HOME/.steam/steam/steam_dev.cfg 2>/dev/null
	ln -s $SCRIPTPATH/configs/steam/steam_dev.cfg $HOME/.steam/steam/steam_dev.cfg
}

###########################################################
# Link IdeaVim configuration
# Arguments:
#   None
# Outputs:
#   None
###########################################################
function link_ideavim() {
	echo "Linking Ideavim configuration"
	rm -rf $HOME/.config/ideavim 2>/dev/null
	rm $HOME/.ideavimrc 2>/dev/null
	ln -s $SCRIPTPATH/configs/ideavim $HOME/.config/ideavim
	ln -s $SCRIPTPATH/configs/ideavim/.ideavimrc $HOME/.ideavimrc
}

###########################################################
# Link Plasma configuration
# Arguments:
#   None
# Outputs:
#   None
###########################################################
function install_plasma_config() {
	echo "Linking Plasma config files"
	rm -rf $HOME/.config/autostart 2>/dev/null
	rm $HOME/.config/kdeglobals 2>/dev/null
	rm $HOME/.config/kwinrc 2>/dev/null
	rm $HOME/.config/kxkbrc 2>/dev/null
	rm $HOME/.config/kglobalshortcutsrc 2>/dev/null

	ln -s $SCRIPTPATH/configs/plasma/autostart -T $HOME/.config/autostart
	ln -s $SCRIPTPATH/configs/plasma/kdeglobals -T $HOME/.config/kdeglobals
	ln -s $SCRIPTPATH/configs/plasma/kwinrc -T $HOME/.config/kwinrc
	ln -s $SCRIPTPATH/configs/plasma/kxkbrc -T $HOME/.config/kxkbrc
	ln -s $SCRIPTPATH/configs/plasma/kglobalshortcutsrc -T $HOME/.config/kglobalshortcutsrc
}

# Call functions
create_base_folders
link_git_config_file
link_ssh_config_file
link_zsh_configs
install_starship_shell
link_tmux_config
link_personal_scripts
#link_kitty_config
link_alacritty_config
#link_chromium_browsers_config
# link_steam_config
install_plasma_config
