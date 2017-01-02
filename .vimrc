set nocompatible
let g:rehash256 = 1

execute pathogen#infect()
filetype plugin indent on

set number          " show line numbers
set tabstop=4
set shiftwidth=4
set expandtab
" set showmatch     " show the matching part of the pair for [] {} and ()

set visualbell 
set t_vb=

" NERDTree Option
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
b:NERDTree.isTabTree()) | q | endif

" enable all Python syntax highlighting features
let python_highlight_all = 1
syntax on 
colorscheme molokai
set cursorline

" doubles
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
