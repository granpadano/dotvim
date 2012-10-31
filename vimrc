filetype off

call pathogen#infect()
call pathogen#helptags()

set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set hidden
set nocp
let mapleader=","
"Powerline settings
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
"let g:Powerline_symbols = 'compatible'

syntax on
filetype plugin indent on

set tags+=~/.vim/tags/stl

func! WriteIfModified()
    if &modified
        write
    endif
endfunc

map <F3> :NERDTreeFind<CR>
map <F4> :NERDTreeToggle<CR>

map <F5> :Tlist<CR> 

nnoremap <F6> :GundoToggle<CR>

map <F10> :call WriteIfModified()<CR>:make<CR><CR><CR>:cc<CR><CR>

map <F11> :!indent -npro -kr -i8 -ts8 -sob -l120 -ss -ncs -cp1 %<CR><CR>

map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR><CR>

