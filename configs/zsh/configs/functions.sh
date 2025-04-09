#!/usr/bin/env zsh

# Check OS
function check_os() {
	XAP_OS="dunno"
	case "$(uname -s)" in
	Darwin) XAP_OS="macos" ;;
	Linux)
		case "$(uname -r)" in
		*WSL*) XAP_OS="wsl" ;;
		*fc*) XAP_OS="fedora" ;;
		*) XAP_OS="arch" ;;
		esac
		;;
	esac

	export XAP_OS
}

# Mount OneDrive Storage
function mount_onedrive() {
	if ! command -v rclone; then
		echo "rclone is not installed"
		return 1
	fi
	rclone --vfs-cache-mode full mount OneDrivePersonal:/ /home/pablo/OneDrive &
	return 0
}

# Function to source files if they exist
# @author: ChristianChiarulli - https://github.com/ChristianChiarulli/Machfiles/blob/master/zsh/.config/zsh/zsh-functions
function zsh_add_file() {
	# shellcheck disable=SC1090
	[ -f "$ZDOTDIR/$1" ] && source "$ZDOTDIR/$1"
}

# Function to load plugins
# @author: ChristianChiarulli - https://github.com/ChristianChiarulli/Machfiles/blob/master/zsh/.config/zsh/zsh-functions
function zsh_add_plugin() {
	PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
	if [ -d "$ZDOTDIR/plugins/$PLUGIN_NAME" ]; then
		# For plugins
		zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" ||
			zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
	else
		echo "Installing plugin $PLUGIN_NAME"
		git clone "https://github.com/$1.git" "$ZDOTDIR/plugins/$PLUGIN_NAME"
		zsh_add_plugin $1
	fi
}

function add_git_plugin() {
	# Git completion bash is required for git-completion zsh
	git_comp_bash_script="$ZDOTDIR/plugins/git-completion.bash"
	if [[ ! -f $git_comp_bash_script ]]; then
		curl -o "$git_comp_bash_script" https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
	fi
	git_comp_zsh_script="$ZDOTDIR/plugins/git-completion.zsh"
	if [[ ! -f $git_comp_zsh_script ]]; then
		curl -o "$git_comp_zsh_script" https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
	fi
	source $git_comp_zsh_script
}

# Check if a tunnel is active
function xap_check_tunnel() {
	# TODO: Chagne variable name?
	if pgrep -f "tunnel|ssh -L|ssh -R|ngrok" >/dev/null; then
		export TUNNEL_ACTIVE=1
	else
		unset TUNNEL_ACTIVE
	fi
}

# Include all the files in a folder
zsh_add_folder() {
	for f in $1/*; do
		source $f
	done 2>/dev/null
}
