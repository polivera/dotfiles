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

" Comments
" https://github.com/tpope/vim-commentary
Plug 'tpope/vim-commentary'

" File explorer
" https://github.com/antoinemadec/FixCursorHold.nvim
Plug 'antoinemadec/FixCursorHold.nvim'
" https://github.com/lambdalisue/fern.vim
Plug 'lambdalisue/fern.vim'
" https://github.com/lambdalisue/nerdfont.vim
Plug 'lambdalisue/nerdfont.vim'
" https://github.com/lambdalisue/fern-renderer-nerdfont.vim
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
" https://github.com/lambdalisue/fern-git-status.vim
Plug 'lambdalisue/fern-git-status.vim'

" Status-line
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons' " icons (lua)

" Initialize plugin system
call plug#end()
