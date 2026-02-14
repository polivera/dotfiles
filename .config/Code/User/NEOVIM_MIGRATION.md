# Neovim to VSCode Migration Guide

This document outlines your Neovim configuration and the VSCode equivalents you'll need.

## Your Neovim Setup Summary

### Core Plugins & Functionality

#### File Navigation & Search

**Telescope** - Fuzzy finder for files, grep, buffers
- `<leader>fl` - Find files
- `<leader>fL` - Find all files (including ignored)
- `<leader>fu` - Switch buffers
- `<leader>fr` - Recent files
- `<leader>fj` - Live grep
- `<leader>f/` - Grep word under cursor
- `<leader>fJ` - Grep with file filter

**Harpoon** - Quick file marking/jumping
- `<leader>ha` - Add file to harpoon
- `<leader>hg` - Toggle harpoon menu
- `<leader>1-4` - Jump to marked files 1-4

**Oil** - File explorer (edit filesystem like a buffer)
- `<leader>/` - Open Oil

**Nvim-tree** - Traditional file tree
- `<leader>\` - Toggle tree
- `<leader>f\` - Find current file in tree

#### LSP (Language Server Protocol)

**Languages configured:** Lua, PHP, Python, Go, Templ, Terraform, JavaScript/TypeScript, CSS, HTML, TailwindCSS, Docker, Java

**LSP Keybindings:**
- `<leader>ld` - Go to definition
- `<leader>lr` - Find references
- `<leader>li` - Go to implementation
- `<leader>lt` - Go to type definition
- `<leader>ls` - Document symbols
- `<leader>lS` - Workspace symbols
- `<leader>la` - Code actions
- `<leader>ln` - Rename symbol
- `<leader>ll` - Hover documentation
- `<leader>lk` - Signature help
- `<leader>lf` - Format document
- `<leader>le` - Show diagnostics

#### Debugging (DAP)

Support for PHP, Go, Python debugging

**DAP Keybindings:**
- `<leader>do` - Start/Continue
- `<leader>dn` - Step over
- `<leader>di` - Step into
- `<leader>du` - Step out
- `<leader>db` - Toggle breakpoint
- `<leader>dr` - Open REPL
- `<leader>dq` - Close DAP UI
- `<leader>df` - Float element
- `<leader>de` - Eval

#### Git Integration

**Neogit** - Magit-like Git interface
- `<leader>og` - Open Neogit
- `<leader>oL` - Neogit log
- `<leader>of` - File log

**Gitsigns** - Git decorations
- `<leader>oa` - Git blame
- `<leader>ot` - Blame line

**Diffview** - Git diff viewer
- `<leader>ol` - File history

#### Diagnostics & Errors

**Trouble** - Pretty diagnostics list
- `<leader>xx` - Toggle diagnostics
- `<leader>xX` - Buffer diagnostics
- `<leader>xs` - Symbols
- `<leader>xl` - LSP references
- `<leader>xL` - Location list
- `<leader>xQ` - Quickfix list

#### Code Completion & Snippets

- **nvim-cmp** - Completion engine
- **LuaSnip** - Snippet engine
- **nvim-autopairs** - Auto-close brackets
- **tabout** - Tab out of brackets/quotes

#### Formatting & Linting

- **conform.nvim** - Formatter (Prettier, Black, Stylua, PHP-CS-Fixer, goimports)
- **nvim-lint** - Linter (PHPStan, Ruff, etc.)

#### Additional Tools

- **Obsidian** - Note-taking
- **vim-dadbod** - Database interface
- **csvview** - CSV viewer
- **todo-comments** - Highlight TODO/FIXME
- **which-key** - Keybinding hints
- **noice** - Better UI notifications
- **render-markdown** - Markdown preview

### Custom Keybindings

#### General
- `<Space>` - Leader key
- `<leader>w` - Save file
- `<leader>q` - Close buffer
- `<leader>Q` - Quit all
- `<leader>wr` - Reload buffer
- `<C-0>` - Jump to alternate buffer
- `<C-p>` - Tmux sessionizer
- `<C-g>` - Escape (in insert/visual mode)

#### Text Manipulation
- `tu` - Uppercase
- `tl` - Lowercase
- `tt` - Toggle case
- `m` - Cut (mapped to delete)
- `mm` - Cut line
- `d` - Delete without yanking
- `c` - Change without yanking
- `x` - Delete char without yanking
- `<`, `>` - Indent/outdent (normal & visual, stays in visual)
- `n`, `N` - Search next/previous (centered)
- `J` - Join lines (preserve cursor position)

#### Tabs
- `<leader>an` - New tab
- `<leader>aq` - Close tab

---

## VSCode Extensions You'll Need

### Essential Extensions

#### 1. File Navigation & Search
- VSCode has built-in fuzzy file search (`Ctrl+P`)
- Built-in search (`Ctrl+Shift+F`)
- **Extension:** "Harpoon" (VSCode port exists but limited)
  - ID: `tobias-z.vscode-harpoon`

#### 2. Language Support

**PHP:**
- `bmewburn.vscode-intelephense-client`

**Python:**
- `ms-python.python`

**Go:**
- `golang.go`

**JavaScript/TypeScript:**
- Built-in (no extension needed)

**Terraform:**
- `hashicorp.terraform`

**Docker:**
- `ms-azuretools.vscode-docker`

**Java:**
- `vscjava.vscode-java-pack`

**Tailwind CSS:**
- `bradlc.vscode-tailwindcss`

#### 3. Git Integration

**GitLens:**
- `eamodio.gitlens` (superior to Neogit features)

**Git Graph:**
- `mhutchie.git-graph`

**Note:** Built-in Source Control is excellent

#### 4. Debugging

**PHP Debug:**
- `xdebug.php-debug`

**Python Debugger:**
- Built into Python extension

**Go Debug:**
- Built into Go extension

**Note:** VSCode's debugging is arguably better than Neovim's DAP

#### 5. Code Quality

**Prettier:**
- `esbenp.prettier-vscode`

**ESLint:**
- `dbaeumer.vscode-eslint`

**Pylint/Ruff:**
- Included in Python extension

**PHPStan:**
- `swordev.phpstan`

#### 6. Productivity

**Error Lens:**
- `usernamehw.errorlens` (inline diagnostics, like tiny-inline-diagnostic)

**Todo Tree:**
- `gruntfuggly.todo-tree` (like todo-comments)

**Path Intellisense:**
- `christian-kohler.path-intellisense`

**Auto Rename Tag:**
- `formulahendry.auto-rename-tag`

**Auto Close Tag:**
- `formulahendry.auto-close-tag`

**Indent Rainbow:**
- `oderwat.indent-rainbow`

#### 7. Database

**Database Client:**
- `cweijan.vscode-database-client2` (replaces vim-dadbod)

**Or SQLTools:**
- `mtxr.sqltools`

#### 8. Markdown

**Markdown All in One:**
- `yzhang.markdown-all-in-one`

**Markdown Preview Enhanced:**
- `shd101wyy.markdown-preview-enhanced`

#### 9. Vim Emulation (Optional but Recommended)

**VSCodeVim:**
- `vscodevim.vim` - Brings many Vim keybindings to VSCode

---

## Key Shortcuts to Configure in VSCode

VSCode uses `Ctrl` instead of `<leader>` by default, but you can customize in `keybindings.json`.

To open keybindings: `Ctrl+Shift+P` → "Preferences: Open Keyboard Shortcuts (JSON)"

### Example Keybindings Configuration

```jsonc
[
  // File operations
  { "key": "ctrl+p", "command": "workbench.action.quickOpen" }, // Already default
  { "key": "ctrl+shift+f", "command": "workbench.action.findInFiles" }, // Already default
  { "key": "ctrl+shift+o", "command": "workbench.action.gotoSymbol" }, // Document symbols

  // LSP shortcuts (if using VSCodeVim with leader key as space)
  { "key": "space l d", "command": "editor.action.revealDefinition", "when": "editorTextFocus && vim.active && vim.mode == 'Normal'" },
  { "key": "space l r", "command": "editor.action.goToReferences", "when": "editorTextFocus && vim.active && vim.mode == 'Normal'" },
  { "key": "space l i", "command": "editor.action.goToImplementation", "when": "editorTextFocus && vim.active && vim.mode == 'Normal'" },
  { "key": "space l t", "command": "editor.action.goToTypeDefinition", "when": "editorTextFocus && vim.active && vim.mode == 'Normal'" },
  { "key": "space l a", "command": "editor.action.quickFix", "when": "editorTextFocus && vim.active && vim.mode == 'Normal'" },
  { "key": "space l n", "command": "editor.action.rename", "when": "editorTextFocus && vim.active && vim.mode == 'Normal'" },
  { "key": "space l f", "command": "editor.action.formatDocument", "when": "editorTextFocus && vim.active && vim.mode == 'Normal'" },
  { "key": "space l l", "command": "editor.action.showHover", "when": "editorTextFocus && vim.active && vim.mode == 'Normal'" },
  { "key": "space l e", "command": "workbench.actions.view.problems", "when": "vim.active && vim.mode == 'Normal'" },

  // Git shortcuts
  { "key": "space o g", "command": "workbench.view.scm", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space o a", "command": "gitlens.toggleFileBlame", "when": "vim.active && vim.mode == 'Normal'" },

  // File explorer
  { "key": "space \\", "command": "workbench.action.toggleSidebarVisibility", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space /", "command": "workbench.files.action.focusFilesExplorer", "when": "vim.active && vim.mode == 'Normal'" },

  // Telescope-like file search
  { "key": "space f l", "command": "workbench.action.quickOpen", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space f u", "command": "workbench.action.showAllEditors", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space f r", "command": "workbench.action.openRecent", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space f j", "command": "workbench.action.findInFiles", "when": "vim.active && vim.mode == 'Normal'" },

  // Trouble-like diagnostics
  { "key": "space x x", "command": "workbench.actions.view.problems", "when": "vim.active && vim.mode == 'Normal'" },

  // Debugging
  { "key": "space d o", "command": "workbench.action.debug.continue", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space d n", "command": "workbench.action.debug.stepOver", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space d i", "command": "workbench.action.debug.stepInto", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space d u", "command": "workbench.action.debug.stepOut", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space d b", "command": "editor.debug.action.toggleBreakpoint", "when": "vim.active && vim.mode == 'Normal'" },

  // Buffer/file operations
  { "key": "space w", "command": "workbench.action.files.save", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space q", "command": "workbench.action.closeActiveEditor", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space shift+q", "command": "workbench.action.closeAllEditors", "when": "vim.active && vim.mode == 'Normal'" },

  // Harpoon-like shortcuts (if using harpoon extension)
  { "key": "space h a", "command": "vscode-harpoon.addEditor", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space h g", "command": "vscode-harpoon.editorQuickPick", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space 1", "command": "vscode-harpoon.gotoEditor1", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space 2", "command": "vscode-harpoon.gotoEditor2", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space 3", "command": "vscode-harpoon.gotoEditor3", "when": "vim.active && vim.mode == 'Normal'" },
  { "key": "space 4", "command": "vscode-harpoon.gotoEditor4", "when": "vim.active && vim.mode == 'Normal'" }
]
```

---

## What VSCode Does Better

- **Integrated debugging** - More visual, easier to use
- **GitLens** - More powerful than Gitsigns
- **IntelliSense** - Often faster and more complete
- **Built-in terminal** - Better integration
- **Extension marketplace** - Huge ecosystem
- **Settings UI** - Easier configuration
- **Remote development** - SSH, Containers, WSL support

---

## What You'll Miss from Neovim

- **Harpoon** - No perfect VSCode equivalent (the port is limited)
- **Oil.nvim** - Unique buffer-based file editing
- **Modal editing** - VSCodeVim helps but isn't perfect
- **Startup speed** - VSCode is slower to launch
- **Tmux integration** - Less relevant in VSCode
- **Terminal workflow** - VSCode is more GUI-focused
- **Minimalism** - VSCode is heavier on resources

---

## Quick Start Checklist

- [ ] Install VSCodeVim extension for modal editing
- [ ] Install language extensions (PHP, Python, Go, etc.)
- [ ] Install GitLens for advanced Git features
- [ ] Install Error Lens for inline diagnostics
- [ ] Install Todo Tree for TODO/FIXME highlighting
- [ ] Install Database Client for database management
- [ ] Configure keybindings.json with Neovim-like shortcuts
- [ ] Install Harpoon extension for quick file navigation
- [ ] Configure formatters (Prettier, Black, etc.)
- [ ] Set up debugging configurations for your languages

---

## Installation Script

You can install most extensions via command line:

```bash
# Essential
code --install-extension vscodevim.vim
code --install-extension eamodio.gitlens
code --install-extension usernamehw.errorlens
code --install-extension gruntfuggly.todo-tree

# Languages
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension ms-python.python
code --install-extension golang.go
code --install-extension hashicorp.terraform
code --install-extension ms-azuretools.vscode-docker
code --install-extension bradlc.vscode-tailwindcss

# Code Quality
code --install-extension esbenp.prettier-vscode
code --install-extension dbaeumer.vscode-eslint
code --install-extension swordev.phpstan

# Productivity
code --install-extension christian-kohler.path-intellisense
code --install-extension formulahendry.auto-rename-tag
code --install-extension formulahendry.auto-close-tag
code --install-extension tobias-z.vscode-harpoon
code --install-extension oderwat.indent-rainbow

# Database
code --install-extension cweijan.vscode-database-client2

# Markdown
code --install-extension yzhang.markdown-all-in-one
code --install-extension shd101wyy.markdown-preview-enhanced

# Git
code --install-extension mhutchie.git-graph

# Debugging
code --install-extension xdebug.php-debug
```

---

## Notes

- This guide is based on your Neovim configuration located at `~/Projects/Personal/neovim-config/`
- Your Neovim config uses lazy.nvim as the plugin manager
- You have 49+ plugins installed in Neovim
- Leader key is `<Space>` in both Neovim and recommended VSCode setup
