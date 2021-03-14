"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
" General config
"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_

" Plugins install
source $XDG_CONFIG_HOME/nvim/vim-plug.vim
" Base Config
source $XDG_CONFIG_HOME/nvim/defaults/settings.vim
" Keymaps
source $XDG_CONFIG_HOME/nvim/defaults/keymaps.vim

" ========================================================== "
" == Pugins Configuration ================================== "
" ========================================================== "

" vim-commentary
source $XDG_CONFIG_HOME/nvim/plugins/vim-commentary.vim

" ferntree
source $XDG_CONFIG_HOME/nvim/plugins/ferntree.vim

" Galaxy status line
luafile $XDG_CONFIG_HOME/nvim/lua/plugins/galaxyline.lua