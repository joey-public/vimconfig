syntax on
syntax enable
"set keymap=dvorak
set noswapfile
set nowrap
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
set colorcolumn=60,80
set incsearch
set hlsearch
set ignorecase

set path+=**
set wildmenu
set wildignore+=**/node_modules/**
set hidden

"map <F1> :e init.vim or .vimrc path<CR>
map <F2> :set bg=dark<CR>
map <F3> :set bg=light<CR>
map <F4> :setlocal spell!<CR>

inoremap jj <esc> 
inoremap <space><space> <c-n>

nnoremap ;; :w<CR>
nnoremap ;;' :wq<CR>
nnoremap ''' :q<CR>
nnoremap <BS> <C-6>
nnoremap ;v <S-v>
nnoremap <tab><space> i<c-n>
nnoremap oo o<esc>

let mapleader = " "
map <leader>; <S-$>
map <leader>a 0
map <leader>q <F1>
map <leader>w <F2>
map <leader>e <F3>
map <leader>r <F4>
map <leader>t <F5>
map <leader>y <F6>
map <leader>u <F7>
map <leader>i <F8>
map <leader>o <F9>
map <leader>p <F10>
map <leader><space> <S-:>
map <leader>l <C-w>
map <leader>j <C-w>s
map <leader>hh <C-w>h
map <leader>jj <C-w>j
map <leader>kk <C-w>k
map <leader>ll <C-w>l
map <leader>g <S-g>
map <leader><CR> <esc>
