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
" https://github.com/lambdalisue/fern.vim (dirtree)
Plug 'lambdalisue/fern.vim'
" https://github.com/lambdalisue/nerdfont.vim (icons)
Plug 'lambdalisue/nerdfont.vim'
" https://github.com/lambdalisue/fern-renderer-nerdfont.vim (render icons on dirtree)
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
" https://github.com/lambdalisue/fern-git-status.vim (show git status of files)
Plug 'lambdalisue/fern-git-status.vim'

" Status-line
" https://github.com/glepnir/galaxyline.nvim (show status line)
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" https://github.com/kyazdani42/nvim-web-devicons (show icons on statusline)
Plug 'kyazdani42/nvim-web-devicons' " icons (lua)

" Git
" https://github.com/airblade/vim-gitgutter (git status info for each line)
Plug 'airblade/vim-gitgutter'
" https://github.com/tpope/vim-fugitive (git commands)
Plug 'tpope/vim-fugitive'
" https://github.com/tpope/vim-rhubarb (use GBrowser to go to the repo page)
Plug 'tpope/vim-rhubarb'
" https://github.com/junegunn/gv.vim (git commit browser)
Plug 'junegunn/gv.vim'
" https://github.com/rhysd/git-messenger.vim (reveal commit messages)
Plug 'rhysd/git-messenger.vim'

" Move around
" https://github.com/unblevable/quick-scope
Plug 'unblevable/quick-scope'
" https://github.com/easymotion/vim-easymotion 
Plug 'easymotion/vim-easymotion'

" Auto-pair
" https://github.com/jiangmiao/auto-pairs
Plug 'jiangmiao/auto-pairs'

" Color-pair
" https://github.com/p00f/nvim-ts-rainbow
Plug 'p00f/nvim-ts-rainbow'

" Tree-sitter (Parser)
" https://github.com/tree-sitter/tree-sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Color scheme
" https://github.com/ChristianChiarulli/nvcode-color-schemes.vim
Plug 'christianchiarulli/nvcode-color-schemes.vim'

" Start screen
" https://github.com/mhinz/vim-startify
Plug 'mhinz/vim-startify'

" Initialize plugin system
call plug#end()
