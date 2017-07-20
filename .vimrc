set nocompatible
let g:rehash256 = 1

execute pathogen#infect()
filetype plugin indent on

" editor config
set number			" show line numbers
set tabstop=4
set shiftwidth=4
set expandtab
" set showmatch		" show the matching part of the pair for [] {} and ()

" disabling blinking
set visualbell 
set t_vb=

" copy paste insertmode
set pastetoggle=<F3>

" NERDTree Option
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" colorscheme
let python_highlight_all = 1
syntax on 
set background=dark
colorscheme solarized
set cursorline

" doubles brackets
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i

" commandline
set showcmd " shows typed commands
set showmode " shows current mode (INSTERT, APPEND, ..)

" search
set incsearch " Search as you type
set ignorecase " To ignre case when searching
set hlsearch " To hightlight matches when searching

" remember last cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
