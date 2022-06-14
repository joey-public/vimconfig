syntax on
syntax enable


"set keymap=dvorak
set noswapfile
set scrolloff=12
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

set number
set relativenumber

set cursorline
set cursorcolumn
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
"Plug 'scrooloose/nerdtree'
"Plug 'neoclide/coc.nvim', {'branch','release'}

call plug#end()

"colorscheme gruvbox
colorscheme tokyonight
let g:airline_theme='tokyonight'
