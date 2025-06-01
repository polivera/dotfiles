# XDG folders
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config

# ZSH Config
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export HISTFILE=$XDG_CACHE_HOME/zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

export GNUPGHOME=$HOME/.gnupg

if command -v nvim &> /dev/null
then
  EDITOR="nvim"
else
  if command -v vim &> /dev/null
  then
    EDITOR="vim"
  else
    EDITOR="nano"
  fi
fi
export EDITOR
