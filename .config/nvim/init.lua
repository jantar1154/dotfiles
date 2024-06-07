vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true -- line numbers
vim.opt.termguicolors = true
vim.opt.colorcolumn = '80'
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true

-- Tabs to spaces
vim.opt.tabstop = 8
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')
vim.cmd('set relativenumber')

-- tabs
vim.keymap.set('n', '<A-k>', ':tabnew<CR>')
vim.keymap.set('n', '<A-j>', ':tabclose<CR>')
vim.keymap.set('n', '<A-h>', ':tabprevious<CR>')
vim.keymap.set('n', '<A-l>', ':tabnext<CR>')
vim.keymap.set('n', '<A-Left>', ':-tabmove<CR>')
vim.keymap.set('n', '<A-Right>', ':+tabmove<CR>')

-- Coc autocomplete on TAB
vim.api.nvim_set_keymap("i", "<TAB>", "coc#pum#visible() ? coc#_select_confirm(): '<TAB>'", {noremap = true, silent = true, expr = true})

local Plug = vim.fn['plug#']

-- Plug
vim.call('plug#begin')

Plug('vim-airline/vim-airline')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('neoclide/coc.nvim')
Plug('andweeb/presence.nvim') -- Discord rich presence
Plug('mg979/vim-visual-multi')
Plug('andrewferrier/wrapping.nvim') -- Better soft wrapping
Plug('lukas-reineke/indent-blankline.nvim') -- indent lines
Plug('tiagovla/tokyodark.nvim')
Plug('Raimondi/delimitMate') -- auto closing brackets
Plug('clangd/coc-clangd')

vim.call('plug#end')

require('wrapping').setup()
require('ibl').setup()
require('telescope').setup()

-- Set wrapping to soft
require('wrapping').soft_wrap_mode()

-- Telescope
-- vim.keymap.set('n', '<C-p>', ':Telescope find_files<CR>')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space>ff', builtin.find_files, {})

vim.cmd.colorscheme "tokyodark"
