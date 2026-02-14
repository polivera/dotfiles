stow:
	@mkdir -p ~/.local ~/.config ~/.ssh
	@stow -d ~/Projects/Personal/dotfiles -t ~ .

vscode-export:
	@code --list-extensions > .config/Code/extensions.txt

vscode-import:
	@xargs -L 1 code --install-extension < .config/Code/extensions.txt
