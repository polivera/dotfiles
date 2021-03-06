"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
" General config
"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_

" Plugins install
source $XDG_CONFIG_HOME/nvim/vim-plug.vim

" Base Config
source $XDG_CONFIG_HOME/nvim/defaults/settings.vim

" Keymaps
source $XDG_CONFIG_HOME/nvim/defaults/keymaps.vim


"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
" Plugins Configuration
"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_

" vim-commentary
source $XDG_CONFIG_HOME/nvim/plugins/vim-commentary.vim

" ferntree
source $XDG_CONFIG_HOME/nvim/plugins/ferntree.vim

" Quick Scope
source $XDG_CONFIG_HOME/nvim/plugins/quick-scope.vim

" nvcode-color-schemes 
source $XDG_CONFIG_HOME/nvim/plugins/nvcode-color-schemes.vim
luafile $XDG_CONFIG_HOME/nvim/lua/plugins/nvcode-color-schemes.lua

" Galaxy status line
luafile $XDG_CONFIG_HOME/nvim/lua/plugins/galaxyline.lua

" TS Rainbow
luafile $XDG_CONFIG_HOME/nvim/lua/plugins/nvim-ts-rainbow.lua

"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
" Configuration by filetype
"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_

" PHP
source $HOME/.config/nvim/defaults/filetype/php.vim

