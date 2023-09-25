# Call custom init
source $ZDOTDIR/configs/init.sh

# Export starship init
export STARSHIP_CONFIG=$ZDOTDIR/starship/config.toml

# Init starship
eval "$(starship init zsh)"

