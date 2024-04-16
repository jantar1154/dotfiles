set nocompatible
set ignorecase
set tabstop=4
set softtabstop=4
set expandtab
set number
set cc=80

nnoremap <C-t> :NERDTreeToggle<CR>
call plug#begin()

Plug 'dracula/vim'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
