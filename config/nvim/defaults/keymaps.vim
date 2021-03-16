" ================================================
"   ______                
"   | ___ \               
"   | |_/ / __ _ ___  ___ 
"   | ___ \/ _` / __|/ _ \
"   | |_/ / (_| \__ \  __/
"   \____/ \__,_|___/\___|
" ================================================

" Basic Key Mappings
" g Leader key
let mapleader=" "
"let localleader=" "
nnoremap <Space> <Nop>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" No yank on delete, move that functionality
" to <leader>d
nnoremap d "_d
xnoremap d "_d
xnoremap p "_dP
nnoremap <leader>d d
xnoremap <leader>d d
xnoremap <leader>p dP

" I hate escape more than anything else
inoremap jk <Esc>

" Save
nnoremap <silent> <C-s> :w<CR>

" Tabs
nnoremap <silent> tn :tabnew<CR>
nnoremap <silent> tj :tabprevious<CR>
nnoremap <silent> tk :tabnext<CR>
nnoremap <silent> tq :q<CR>

" ================================================
"   ______ ____________ 
"   |  ___|___  /|  ___|
"   | |_     / / | |_   
"   |  _|   / /  |  _|  
"   | |   ./ /___| |    
"   \_|   \_____/\_|    
" ================================================

" Search on Files (tracked on git)
nnoremap <silent> ng :GFiles<CR>
" Search in all files
nnoremap <silent> na :Files<CR>
" Search buffers
nnoremap <silent> ne :Buffers<CR>

" Search pattern in all files
nnoremap <silent> fa :Ag 
" Search in current file
nnoremap <silent> <C-f> :BLines<CR>

" ================================================
" ______            _____             
" |  ___|          |_   _|            
" | |_ ___ _ __ _ __ | |_ __ ___  ___ 
" |  _/ _ \ '__| '_ \| | '__/ _ \/ _ \
" | ||  __/ |  | | | | | | |  __/  __/
" \_| \___|_|  |_| |_\_/_|  \___|\___|
" ================================================
noremap <silent> <leader>b :Fern . -drawer -toggle -reveal=%<CR>

