execute pathogen#infect()

let g:rehash256 = 1
let g:molokai_original = 1

colorscheme molokai

let python_highlight_all = 1
syntax on
set number
filetype plugin indent on
set ts=4
set shiftwidth=4
set expandtab
set softtabstop=4
set backspace=2
set cursorline

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

autocmd BufWritePost *.py call Flake8()
