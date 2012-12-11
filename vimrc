filetype off

call pathogen#infect()
call pathogen#helptags()

set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set hidden
set nocp
set hlsearch
let mapleader=","
"Powerline settings
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
"let g:Powerline_symbols = 'compatible'
"ShowMarks setting
let showmarks_enable=0

syntax on
filetype plugin indent on

"omnicompletion
"set ofu=syntaxcomplete#Complete

"let NERDCommentWholeLinesInVMode=2
"let NERDBlockComIgnoreEmpty=0
let g:NERDCustomDelimiters = {
        \ 'python': { 'left': '#', 'leftAlt': '#', 'rightAlt': '#' },
    \ }


colorscheme wombat

set tags+=~/.vim/tags/stl

func! WriteIfModified()
    if &modified
        write
    endif
endfunc

"func! FillHeader()
    ":.,+6s/\(Filename *: *\).*/\=submatch(1).expand('%:t')/ge
    ":.,+6s@\(Created *: *\).*@\=submatch(1).strftime("%y/%m/%d")@ge
    ":.,+4s/\(Author *: *\).*/\1Vincent Verneuil, vverneuil@insidefr.com/ge
    ":.,+2s/\(Company *: *\).*/\1Inside Secure/ge
"endfunc

func! FillHeader()
    :-14,.s/\(Filename *: *\).*/\=submatch(1).expand('%:t')/ge
    :.,+6s@\(Created *: *\).*@\=submatch(1).strftime("%y/%m/%d")@ge
    :.,+4s/\(Author *: *\).*/\1Vincent Verneuil, vverneuil@insidefr.com/ge
    :.,+2s/\(Company *: *\).*/\1Inside Secure/ge
endfunc

nnoremap <C-J> m`o<Esc>``
nnoremap <C-K> m`O<Esc>``
noremap ù `

nnoremap <leader>id "=strftime("%y/%m/%d")<CR>p
nnoremap <leader>ih :r ~/.vim/header<CR>kddm`:/=====*<CR>v``:call NERDComment('v','Sexy')<CR>
nnoremap <leader>fh :call FillHeader()<CR> 

map <F3> :NERDTreeFind<CR>
map <F4> :NERDTreeToggle<CR>

map <F5> :Tlist<CR> 

nnoremap <F6> :GundoToggle<CR>

map <F10> :call WriteIfModified()<CR>:make<CR><CR><CR>:cc<CR><CR>

"map <F11> :!indent -npro -kr -i8 -ts8 -sob -l120 -ss -ncs -cp1 %<CR><CR>

map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR><CR>




