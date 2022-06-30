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
nnoremap ';; :wq<CR>
nnoremap ''' :q<CR>
nnoremap <BS> <C-6>
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
map <leader>l <C-w>v
map <leader>j <C-w>s
map <leader>hh <C-w>h
map <leader>jj <C-w>j
map <leader>kk <C-w>k
map <leader>ll <C-w>l
map <leader>g <S-g>

map <leader><CR> <esc>

call plug#begin('C:/Users/josep/AppData/Local/nvim/autoload/plugged')

Plug 'morhetz/gruvbox'
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
"Plug 'neoclide/coc.nvim', {'branch','release'}

call plug#end()

let NERTreeSowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

colorscheme gruvbox
"let g:airline_theme='gruvebox'

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

"Mardown Viewer Settings
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_filetypes = ['markdown']
let g:mkdp_theme = 'dark'
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle
"end Markdown Priewview settings
