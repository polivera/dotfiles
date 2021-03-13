" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

" Fuzzy Finder
" https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" https://github.com/gfanto/fzf-lsp.nvim
Plug 'gfanto/fzf-lsp.nvim'


" Initialize plugin system
call plug#end()
