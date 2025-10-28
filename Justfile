stow:
	@mkdir -p ~/.local ~/.config ~/.ssh
	@stow -d ~/Projects/Personal/dotfiles -t ~ .
