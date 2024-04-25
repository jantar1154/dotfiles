vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true -- line numbers
vim.opt.colorcolumn = '80'
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- Tabs to spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')

-- NERD Tree
vim.keymap.set('n', '<F1>', ':NERDTreeToggle<CR>')

-- tabs
vim.keymap.set('n', '<A-Up>', ':tabnew<CR>')
vim.keymap.set('n', '<A-Down>', ':tabclose<CR>')
vim.keymap.set('n', '<A-Left>', ':tabprevious<CR>')
vim.keymap.set('n', '<A-Right>', ':tabnext<CR>')
vim.keymap.set('n', '<A-S-Left>', ':-tabmove<CR>')
vim.keymap.set('n', '<A-S-Right>', ':+tabmove<CR>')
vim.keymap.set("i", "<C-Space>", vim.fn['coc#refresh'])

-- Coc
vim.api.nvim_set_keymap("i", "<TAB>", "coc#pum#visible() ? coc#_select_confirm(): '<TAB>'", {noremap = true, silent = true, expr = true})

local Plug = vim.fn['plug#']

-- Plug
vim.call('plug#begin')

Plug('dracula/vim')
Plug('vim-airline/vim-airline')
Plug('preservim/nerdtree') -- File selector (F1)
Plug('neoclide/coc.nvim')
Plug('andweeb/presence.nvim') -- Discord rich presence
Plug('mg979/vim-visual-multi')
Plug('windwp/nvim-autopairs') -- Automatic closing brackets

vim.call('plug#end')
