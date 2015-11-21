set nocompatible
filetype off

set noshowmode
set number
set showcmd
set ruler
set noswapfile
set nobackup
set nowb
set nowrap
set linebreak

"Search
set ignorecase
set hlsearch
set incsearch

"Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

"Shows the status bar (on default shown after split)
set laststatus=2

"Prevents a pause when leaving insert mode
set timeoutlen=50

set t_Co=256
syntax on
set background=dark
colorscheme jellybeans

"Underlines the current line in insert mode
"autocmd InsertEnter * set cul
"autocmd InsertLeave * set nocul

set colorcolumn=80
highlight ColorColumn ctermbg=233

"Mappings
let mapleader=","

"Vundle
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

"Base plugin, required
Plugin 'VundleVim/Vundle.vim'

"Custom plugins
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

call vundle#end()
filetype plugin indent on

"Plugins configuration

"NERDTree
map <C-n> :NERDTreeToggle<CR>

"vim-airline
let g:airline_powerline_fonts = 1

"Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

"neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
