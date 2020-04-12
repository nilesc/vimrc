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
let g:vimtex_motion_matchparen = 0
let g:vimtex_indent_enabled = 0
let g:vimtex_delim_stopline = 50


" ****** terminal ******
set title


" ****** using the mouse ******
set mouse=a

" ****** gui ******
set guifont=SauceCodePro\ NF:h12
set guioptions+=! " execute commands inside vim terminal emulator
set guioptions-=a " set selection to system clipboard but not in * register
set guioptions+=P " set selection to system clipboard in + register instead
set guioptions+=c " use console dialog for simple choices
set guioptions+=e " show tab pages in gui
set guioptions-=t " no option to dettach system menu
set guioptions-=T " no toolbar
set guioptions-=r " right hand scrollbar not always present
set guioptions-=R " right hand scrollbar not present when there is a vsplit
set guioptions-=l " left hand scrollbar not always present
set guioptions-=L " left hand scrollbar not present when there is a vsplit
set guioptions-=b " no bottom scrollbar
set guioptions-=m " no menubar

" ****** Terminal mode *******
tnoremap <c-j> <c-\><c-n>

" ****** File explorer ******
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 30
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

" " ******* coc *******
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" 
" " Use <C-l> for trigger snippet expand.
" imap <C-l> <Plug>(coc-snippets-expand)
" 
" " Use <C-j> for select text for visual placeholder of snippet.
" vmap <C-j> <Plug>(coc-snippets-select)
" 
" " Use <C-j> for jump to next placeholder, it's default of coc.nvim
" let g:coc_snippet_next = '<c-j>'
" 
" 
" " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
" let g:coc_snippet_prev = '<c-k>'
" 
" " Use <C-j> for both expand and jump (make expand higher priority.)
" imap <C-j> <Plug>(coc-snippets-expand-jump)<Paste>
" 
" " Use <C-l> for trigger snippet expand.
" imap <C-l> <Plug>(coc-snippets-expand)
" 
" " Use <C-j> for select text for visual placeholder of snippet.
" vmap <C-j> <Plug>(coc-snippets-select)
" 
" " Use <C-j> for jump to next placeholder, it's default of coc.nvim
" let g:coc_snippet_next = '<c-j>'
" 
" " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
" let g:coc_snippet_prev = '<c-k>'
" 
" " Use <C-j> for both expand and jump (make expand higher priority.)
" imap <C-j> <Plug>(coc-snippets-expand-jump)

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()

function! s:check_back_space() abort
    let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    let g:coc_snippet_next = '<tab>'

