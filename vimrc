filetype off

call pathogen#infect()
call pathogen#helptags()

set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
let mapleader=","

syntax on
filetype plugin indent on


func! WriteIfModified()
    if &modified
        write
    endif
endfunc

"func! ReloadCscope()
"    "!cscope -Rb
"    !rm -f cscope.out && (make cscope.out || cscope -Rb)
"    "cscope add cscope.out
"endfunc


map <F3> :NERDTreeFind<CR>
map <F4> :NERDTreeToggle<CR>

map <F5> :Tlist<CR> 

nnoremap <F6> :GundoToggle<CR>

map <F7> :call WriteIfModified()<CR>:make<CR><CR><CR>:cc<CR><CR>

"map <F9> :!indent -npro -kr -i8 -ts8 -sob -l120 -ss -ncs -cp1 %<CR><CR>

"map <F11> :call ReloadCscope()<CR><CR><CR>

"map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR><CR>

