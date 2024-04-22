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

nnoremap <C-z> :undo<CR>

" NERDMap
nnoremap <C-CR> :NERDTreeToggle<CR>

" Tabs
nnoremap tn :tabnew<CR>
nnoremap tl :tabnext<CR>
nnoremap th :tabprevious<CR>
nnoremap tx :tabclose<CR>
nnoremap t<S-l> :+tabmove<CR>
nnoremap t<S-h> :-tabmove<CR>

" Coc
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

call plug#begin()

Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
