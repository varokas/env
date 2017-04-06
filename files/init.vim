syntax enable

filetype indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent

set backspace=indent,eol,start

set ruler
syntax on
set showcmd

set cursorline
set showmatch

set wildmenu
set lazyredraw

set incsearch
set hlsearch

call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'sjl/vitality.vim'

call plug#end()
