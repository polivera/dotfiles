#!/usr/bin/env bash

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
      zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.plugin.zsh" || \
      zsh_add_file "plugins/$PLUGIN_NAME/$PLUGIN_NAME.zsh"
  else
      echo "Installing plugin $PLUGIN_NAME"
      git clone "https://github.com/$1.git" "$ZDOTDIR/plugins/$PLUGIN_NAME"
      zsh_add_plugin $1
  fi
}

# Include all the files in a folder
zsh_add_folder() {
  for f in $1/* ; do
    source $f
  done 2>/dev/null
}

# Check OS
function check_os() {
  KERNEL_NAME="$(uname -s)"
  KERNEL_RELEASE="$(uname -r)"
  POLI_OS_NAME="dunno"
  POLI_OS_TYPE="linux"

  case "$KERNEL_NAME" in
    Darwin)
      POLI_OS_TYPE="macos"
      POLI_OS_NAME="macos"
      ;;

    Linux)
      POLI_OS_TYPE="linux"
      case "$KERNEL_RELEASE" in
        *WSL*)
          POLI_OS_TYPE="windows"
          # Windows Subsystem for linux
          POLI_OS_NAME="wsl"
          ;;
        *fc*)
          # Fedora
          POLI_OS_NAME="fedora"
          ;;
        *)
          # Linux distros
          POLI_OS_NAME="arch"
          ;;
      esac
      ;;
    *)
      POLI_OS_TYPE="other"
      POLI_OS_NAME="other"
      # Alias for other OS
      ;;
  esac

  export POLI_OS_NAME
  export POLI_OS_TYPE
}

# Mount OneDrive Storage
function mount_onedrive() {
  rclone --vfs-cache-mode full mount OneDrivePersonal:/ /home/pablo/OneDrive &
}
