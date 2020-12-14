# Disable ctrl + s
stty -ixon

# Include custom shell scripts
for f in $HOME/.config/shellscripts/*; do source "$f"; done

# Source autojump
[[ -s /home/pablo/.autojump/etc/profile.d/autojump.sh ]] && source /home/pablo/.autojump/etc/profile.d/autojump.sh

# Enable autocomplete
autoload -Uz compinit; compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion::complete:*' gain-privileges 1

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Key bindings
# ctrl+{left, right}
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
# Home
bindkey "\e[1~" beginning-of-line
# end
bindkey "\e[4~" end-of-line
# del
bindkey "\e[3~" delete-char
# insert
bindkey "\e[2~" quoted-insert 

# Load Spaceship prompt if it is installed via npm
[[ -d /home/pablo/.zfunctions ]] && fpath=($fpath "/home/pablo/.zfunctions") && load-nvm

# Spaceship theme
SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_CHAR_SYMBOL=$
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_HG_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_VENV_SHOW=true
SPACESHIP_PYENV_SHOW=true
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_JOBS_SHOW=false

# Spaceship Prompt
autoload -U promptinit; promptinit
prompt spaceship

# ZSH Plugins
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# FZF
source /usr/share/fzf/key-bindings.zsh 2>/dev/null
source /usr/share/fzf/completion.zsh 2>/dev/null

# AutoJump
[[ -s /usr/share/autojump/autojump.zsh ]] && source /usr/share/autojump/autojump.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
