" ****** Important ******
set nocompatible

" ****** reading and writing files ******
set autoread
set nowb
set backupdir==~/vimbackup//
"
" ****** displaying text ******
set number
set nowrap
set linebreak
set scrolloff=3 " The number of screen lines to keep above and below the cursor
set sidescrolloff=5 " The number of screen columns to keep to the left and right of the cursor


" ****** syntax, highlighting and spelling ******
syntax enable
set nospell
set spelllang=en
set background=dark
filetype plugin indent on
filetype indent on
set hlsearch
set termguicolors


" ****** terminal ******
set title


" ****** using the mouse ******
set mouse=a

"
" ****** File explorer ******
let g:netrw_banner = 0

" ****** Try to find matches, but give up easily ******
let g:matchparen_timeout = 2
let g:matchparen_insert_timeout = 2


" ****** the swap file ******
set directory=$HOME/vimswp//


" ****** tabs and indenting ******
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" ****** moving around, searching and patterns ******
set incsearch " show match for partly typed search command
set ignorecase
set smartcase
set path+=**

" ****** Plugins ******
call plug#begin('~/dot-files/vim-pure/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ayu-theme/ayu-vim'
Plug 'flazz/vim-colorschemes'
Plug 'lervag/vimtex'
Plug 'airblade/vim-gitgutter'
Plug 'craigemery/vim-autotag'

call plug#end()

let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_latexmk = {
      \ 'options': ['-shell-escape'],
      \}

let g:python_host_prog = '$PYENV_ROOT/versions/2.7.15/bin/python'
let g:python3_host_prog = '$PYENV_ROOT/versions/3.7.0/bin/python'


" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1


" ****** airline ******
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='luna'


" ****** colorscheme ******
let ayucolor="mirage" " for mirage version of theme
colorscheme ayu
