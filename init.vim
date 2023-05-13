syntax on
syntax enable

";general settings
set noswapfile
set nowrap
set scrolloff=12
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
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
au BufRead,BufNewFile *.md setlocal wrap "wrap in .md only
let mapleader = " "
"set keymap=dvorak
"set autoindent

"lua commands
lua vim.o.ch = 0

";netrw settings
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_liststyle = 3
let g:netrw_banner = 0

";fold settings
"augroup AutoSaveFolds
"  autocmd!
"  autocmd BufWinLeave * mkview
"  autocmd BufWinEnter * silent! loadview
"augroup END

";inoremap settings
inoremap <C-s> <esc>:w<CR>
inoremap jj <esc> 
inoremap  <c-j> <c-n>
inoremap  <c-k> <c-p>
"inoremap <space><space> <c-n> "only isf ctrl is not mapped to CAPSLOCK
"inoremap <c-s> <space>

";nnoremap settings
nnoremap <c-BS> db
"nnoremap ; :w<CR>
nnoremap <C-s> :w<CR>
nnoremap ;;' :w<CR>:bd<CR>
nnoremap ''' :q<CR>
nnoremap <BS> <C-6>
nnoremap <tab><space> i<c-n>
nnoremap <tab> z=
nnoremap oo o<esc>
nnoremap nn n
nnoremap nm ]s 
nnoremap mn [s
noremap <c-k> 0r#
noremap <c-l> 0r 

";map settings
"map <F1> :e C:/Users/josep/AppData/Local/nvim/init.vim <CR>
"map <F2> :e C:/Users/josep/Documents/jobis_vailt/ 
map <F4> :setlocal spell!<CR> :hi SpellBad cterm=underline<CR> 
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
map <leader>c :Calendar<CR>

";plugins
call plug#begin('C:/Users/josep/AppData/Local/nvim/autoload/plugged')
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'phha/zenburn.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'
Plug 'itchyny/calendar.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
"Plug 'neoclide/coc.nvim', {'branch':'release'}
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'habamax/vim-godot'
"Plug 'scrooloose/nerdtree'
call plug#end()

";nerdtree settings
"let NERTreeSowLineNumbers=1
"autocmd FileType nerdtree setlocal relativenumber
"map <F5> :NERDTreeToggle<CR>

";theme settings
set bg=dark
colorscheme gruvbox 
let g:airline_theme='gruvbox'
let g:gruvebox_transparent_bg = 1
let g:gruvbox_bold = 1
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_contrast_light = 'soft'

";vimwiki settings
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_markdown_link_ext = 1

";markdown-viewer settings
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
