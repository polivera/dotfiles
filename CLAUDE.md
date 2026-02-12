# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal dotfiles repository managed with GNU Stow. It contains configuration files for:
- Shell environment (Zsh with custom plugins and configuration)
- Terminal emulators (Alacritty, Ghostty, Kitty)
- Development tools (Git, Tmux, Starship prompt)
- Various programming language environments (Node.js, PHP, Go, Rust, Java, Python)
- System-specific configurations for macOS, Arch Linux, Fedora, and WSL

## Deployment

**Install/Update dotfiles:**
```bash
just stow
# or
make stow
```

This uses GNU Stow to symlink all configuration files from this repository to the home directory (`~`). The `.stow-local-ignore` file excludes build artifacts and repository-specific files from being symlinked.

## Repository Structure

### Core Configuration Files

- `.zshenv` - Sets XDG base directories and basic environment variables, sourced first by Zsh
- `.config/zsh/.zshrc` - Main Zsh configuration entry point, sources `config/init.sh`
- `.config/zsh/config/init.sh` - Orchestrates Zsh initialization: loads functions, plugins, and public configs
- `.config/zsh/config/functions.sh` - Utility functions for plugin management and path manipulation
- `.config/zsh/config/public/` - Modular configuration files for different aspects (aliases, development tools, etc.)

### Shell Configuration System

The Zsh configuration uses a modular approach:

1. **Environment Setup** (`.zshenv`): Sets XDG directories, ZDOTDIR, and basic variables
2. **Initialization** (`config/init.sh`):
   - Loads utility functions from `functions.sh`
   - Detects OS with `check_os()` function (exports `$XAP_OS`: "macos", "wsl", "arch", or "fedora")
   - Installs/loads plugins using `zsh_add_plugin()`
   - Sources all files in `config/public/` using `zsh_add_folder()`
3. **Public Configs** (`config/public/*.sh`): Individual files for aliases, development paths, secrets, etc.

Key functions in `functions.sh`:
- `zsh_add_plugin()` - Auto-installs missing plugins from GitHub
- `zsh_add_folder()` - Sources all files in a directory
- `prepend_to_path()` / `append_to_path()` - Add directories to PATH if they exist and aren't already present

### Git Configuration

Git uses conditional includes based on project location (`.config/git/config`):
- `~/Projects/Personal/` - Personal configuration
- `~/Projects/Flipflow/` - Also uses personal configuration
- `~/WinProjects/Personal/` - Windows personal configuration

URL rewrites are configured to use SSH for specific GitHub/Codeberg organizations.

### Development Environment Paths

All development tools are installed under `~/.local` following XDG conventions (`development.sh`):
- Custom scripts: `~/.local/scripts/`
- Binaries: `~/.local/bin/`
- Neovim Mason: `~/.local/share/nvim/mason/`
- Node.js (n): `~/.local/n/`
- Go: `$XDG_DATA_HOME/go/` (`~/.local/share/go/`)
- Rust Cargo: `~/.local/share/cargo/`
- PHP Composer: `$XDG_CONFIG_HOME/composer/` (`~/.config/composer/`)
- Symfony: `~/.symfony5/`

### Secrets Management

Secrets are encrypted using SOPS with PGP:
- Configuration: `.sops.yaml`
- Encrypted secrets: `.config/secrets/env.yaml`
- PGP key: `8F9F3DFDE04C1013B5EDFC5451606E80E8699C71`

To decrypt secrets: `cd .config/secrets && just decrypt` (see `.config/secrets/justfile`)

### Scripts

Custom utility scripts in `.local/scripts/`:
- `tmux-sessionizer.sh` - Tmux session management
- `tmux-exec-pane.sh` / `tmux-exec-window.sh` - Execute commands in Tmux
- `docker-quick-mysql.sh` / `docker-quick-postgres.sh` - Quick database containers
- Various Xap-specific utilities

## Common Aliases

The system defines OS-specific and tool-specific aliases in `.config/zsh/config/public/alias.sh`:

**Shell:**
- `reload-zsh` - Reload Zsh configuration
- `nv`, `v`, `vim` - All aliased to `nvim`

**Git:**
- `gst` - git status
- `gaa` - git add .
- `gcm` - git commit
- `gw` - git worktree
- `gbranch-clean` - Remove local branches tracking deleted remote branches

**Docker:**
- `dc` - docker compose
- `dcu` - docker compose up -d
- `dps` - Pretty formatted docker ps

**Kubernetes:**
- `k` - kubectl
- `kgp` - kubectl get pods

## Editor Configuration

Neovim is the primary editor (aliased from `vim` and `v`). An alternative Neovim configuration can be launched with `nvnew` which uses `NVIM_APPNAME=nvim-new`.

## Platform Detection

The `$XAP_OS` environment variable identifies the current platform:
- `macos` - macOS
- `wsl` - Windows Subsystem for Linux
- `arch` - Arch Linux
- `fedora` - Fedora Linux
- `dunno` - Unknown/unsupported

This variable is set by the `check_os()` function and used throughout configuration files for platform-specific behavior.

## Important Notes

- **Do not modify plugin directories** (`.config/zsh/plugins/`) - these are managed by `zsh_add_plugin()`
- **When adding new public configs**, create files in `.config/zsh/config/public/` - they're automatically sourced
- **Stow ignores** are defined in `.stow-local-ignore` to prevent symlinking repository files
- **Terminal emulator configs** are in `.config/{alacritty,ghostty,kitty}/`
- **Tmux configuration** is split across multiple files sourced from `.config/tmux/tmux.conf`
