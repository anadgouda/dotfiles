" vim configuration file
" Abhijit Nadgouda

set nocompatible
filetype on
filetype plugin indent on
set nobackup
set autowriteall

set mouse=nvr
set wildmenu
set magic

set noea
set nocuc

set incsearch
set hlsearch

set nowrap
set autoindent
set smartindent
set softtabstop=4
set shiftwidth=4
set tabstop=8
set expandtab
set smarttab
set shiftround

set shortmess=atI
set showmode
set showcmd
set ruler
set number
set textwidth=0
set linebreak
set formatoptions=tcqr
set wildmode=longest,full

set ignorecase 
set smartcase
set infercase

set showmatch
let b:match_words=&matchpairs

set autochdir

set tags=/home/anadgouda/wiki/tags;./tags;tags;/
set tags+=/home/anadgouda/.vim/tags/python.ctags

set foldenable
set foldmethod=indent
set foldlevel=2
set foldopen-=search
set foldopen-=undo

set title

syntax on

setlocal spell spelllang=en_gb

set t_Co=256

ab teh the

nmap . .`[
map gf :tabe <cfile><CR>

function! Todo(day, ...)
    " Doing the first separately to clear the location list.
    let _date = strftime("%d%m%Y", localtime()+a:day*86400)
    try
        exec "lvimgrep /" . _date . "/j ~/wiki/*.txt"
    catch /^Vim(\a\+):E480:/
    endtry

    if a:0 > 0
        " These commands will add results to the location list.
        for offset in range(a:day+1, a:1)
            let _date = strftime("%d%m%Y", localtime()+offset*86400)
            try
                exec "lvimgrepadd /" . _date . "/j ~/wiki/*.txt"
            catch /^Vim(\a\+):E480:/
            endtry
        endfor
    endif

    exec "lw"
endfunction

command! Today :call Todo(0)
command! Tomorrow :call Todo(1)
command! Dayafter :call Todo(2)
command! Week :call Todo(0, 7)

"autocmd BufEnter * call CHANGE_CURR_DIR()
autocmd BufWritePost ~/wiki/*.txt :helptags ~/wiki

autocmd FileType python set omnifunc=pythoncomplete#Complete

autocmd BufWritePost *.rst 
    \ !rst2html.py --stylesheet-path=cwprocess.css % %.html

colo typing

