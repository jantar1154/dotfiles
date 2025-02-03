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
vim.cmd('autocmd BufWinEnter * NERDTreeMirror')
vim.cmd('autocmd VimEnter * NERDTree | wincmd p')

-- tabs
vim.keymap.set('n', '<A-k>', ':tabnew<CR>')
vim.keymap.set('n', '<A-j>', ':tabclose<CR>')
vim.keymap.set('n', '<A-h>', ':tabprevious<CR>')
vim.keymap.set('n', '<A-l>', ':tabnext<CR>')
vim.keymap.set('n', '<A-Left>', ':-tabmove<CR>')
vim.keymap.set('n', '<A-Right>', ':+tabmove<CR>')

-- terminal
-- exit
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- open
vim.keymap.set('n', '<C-t>', ':vsplit<CR><C-w><L>:terminal<CR>10<C-w><')

-- NERDTree
vim.keymap.set('n', '<C-f>', ':NERDTreeToggle<CR>')

-- Coc autocomplete on TAB
vim.api.nvim_set_keymap("i", "<TAB>", "coc#pum#visible() ? coc#_select_confirm(): '<TAB>'", {noremap = true, silent = true, expr = true})

-- lazy.nvim init
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    'vim-airline/vim-airline',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    {
        'neoclide/coc.nvim',
        branch = 'release',
    },
    'andweeb/presence.nvim', -- Discord rich presence
    'mg979/vim-visual-multi',
    'andrewferrier/wrapping.nvim',
    'lukas-reineke/indent-blankline.nvim', -- indent lines
    'tiagovla/tokyodark.nvim',
    'Raimondi/delimitMate', -- auto closing brackets
    'clangd/coc-clangd',
    'preservim/nerdtree',
    'ryanoasis/vim-devicons',
}
local opts = {}

require("lazy").setup(plugins, opts)

-- Set wrapping to soft
require('wrapping').setup();
require('wrapping').soft_wrap_mode()

-- Telescope
-- vim.keymap.set('n', '<C-p>', ':Telescope find_files<CR>')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space>ff', builtin.find_files, {})

vim.cmd.colorscheme "tokyodark"
