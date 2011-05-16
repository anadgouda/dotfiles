" vim configuration file
" Abhijit Nadgouda

set nocompatible
set hidden

filetype on
filetype plugin indent on
set nobackup

set mouse=nvr
set wildmenu
set magic
set laststatus=2
set noea
set background=dark

set incsearch
set hlsearch

set nowrap
set autoindent
set copyindent
set smartindent
set softtabstop=4
set shiftwidth=4
set tabstop=8
set expandtab
set smarttab
set shiftround
set backspace=indent,eol,start

set shortmess=atI
set showmode
set showcmd
set ruler
set number
set linebreak
set formatoptions=tcqr
set wildmode=longest,full
set scrolloff=5
set scrolljump=5

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
set foldlevel=4
set foldopen-=search
set foldopen-=undo

set title

syntax on

"setlocal spell spelllang=en_gb
set nospell

set t_Co=256

ab teh the

nmap . .`[
map gf :tabe <cfile><CR>

inoremap jj <Esc>

autocmd FileType python set omnifunc=pythoncomplete#Complete

autocmd BufWritePost *.rst 
    \ !rst2html.py --stylesheet-path=cwprocess.css % %.html

set background=dark
colo typing
