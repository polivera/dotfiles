" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

" Themes
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'

" Conquer of completion
Plug 'neoclide/coc.nvim'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" CSS color
Plug 'ap/vim-css-color'

" JSX syntax highligh
Plug 'mxw/vim-jsx'

" Initialize plugin system
call plug#end()
