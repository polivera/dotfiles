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

# Include all the files in a folder
zsh_add_folder() {
	for f in $1/*; do
		source $f
	done 2>/dev/null
}

# Add path to PATH if needed
prepend_to_path() {
	local new_path="$1"
	# Check if parameter was provided
	if [[ -z "$new_path" ]]; then
		echo "Error: No path provided"
		return 1
	fi
	# Check if directory exists and is not already in PATH
	if [[ -d "$new_path" ]] && [[ ":$PATH:" != *":$new_path:"* ]]; then
		export PATH="$new_path:$PATH"
	elif [[ ! -d "$new_path" ]]; then
		# echo gDirectory $new_path does not exist"
	fi
}

append_to_path() {
	local new_path="$1"
	# Check if parameter was provided
	if [[ -z "$new_path" ]]; then
		echo "Error: No path provided"
		return 1
	fi
	# Check if directory exists and is not already in PATH
	if [[ -d "$new_path" ]] && [[ ":$PATH:" != *":$new_path:"* ]]; then
		export PATH="$new_path:$PATH"
	elif [[ ! -d "$new_path" ]]; then
		echo "Directory $new_path does not exist"
	fi
}
