set nocompatible
filetype off

let mapleader=","

set noshowmode
set number 
set showcmd 
set ruler
au BufRead,BufNewFile *.asm set filetype=nasm
set noswapfile
set nobackup
set nowb
set nowrap
set linebreak
set ignorecase
set hlsearch

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

set t_Co=256
syntax on
set background=dark

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

set colorcolumn=100
highlight ColorColumn ctermbg=233


"""""""Plugins"""""""



