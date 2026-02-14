# List all available commands
default:
    @just --list

# Symlink dotfiles to home directory using GNU Stow
stow:
	@mkdir -p ~/.local ~/.config ~/.ssh
	@stow -d ~/Projects/Personal/dotfiles -t ~ .

# Export installed VSCode extensions to extensions.txt
vscode-export:
	@code --list-extensions > .config/Code/extensions.txt

# Install VSCode extensions from extensions.txt
vscode-import:
	@xargs -L 1 code --install-extension < .config/Code/extensions.txt
