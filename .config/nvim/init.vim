set nocompatible
set ignorecase
set tabstop=4
set smarttab
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set cc=80
colorscheme industry

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-n> :tabnew<CR>
nnoremap <C-m> :tabnext<CR>
nnoremap <C-b> :tabprevious<CR>
nnoremap <C-x> :tabclose<CR>

inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

call plug#begin()

Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
