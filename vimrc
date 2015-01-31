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
colorscheme jellybeans1
"highlight Normal ctermbg=Black ctermfg=White 

"highlight Cursor ctermfg=black ctermbg=white

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

set colorcolumn=100
highlight ColorColumn ctermbg=233


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""PLUGINS"""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vundle"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'

" My bundles here:
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} 
Bundle 'scrooloose/nerdtree'
" Bundle 'git://github.com/davidhalter/jedi-vim'
Bundle 'klen/python-mode'

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
" Optional:
Bundle "honza/vim-snippets"

filetype plugin indent on     " required!
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"Python mode
let g:pymode_rope = 1
let g:pymode_rope_goto_definition_bind = '<Leader>g'
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

let g:pymode_virtualenv = 1
let g:pymode_folding = 0

let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'

"syntax check
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_on_write = 1

""""""""""""""""""""""""""""""""""""""/python mode

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

"NERDTree
map <F2> :NERDTreeToggle<CR>


