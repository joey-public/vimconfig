syntax on
syntax enable
"set keymap=dvorak
set noswapfile
set scrolloff=12
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
"set autoindent

set number
set relativenumber

set cursorline
set cursorcolumn
set colorcolumn=80
set incsearch
set hlsearch
set ignorecase

set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set hidden

call plug#begin('C:/Users/josep/AppData/Local/nvim/autoload/plugged')

Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'vimwiki/vimwiki'
"Plug 'neoclide/coc.nvim', {'branch','release'}

call plug#end()

let NERTreeSowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

colorscheme gruvbox
"let g:airline_theme='gruvebox'

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
