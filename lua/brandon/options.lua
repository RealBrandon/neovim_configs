-- Disable netrw to avoid conflicts with nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

opt.number = true
opt.termguicolors = true
-- Enable nvim-navic
opt.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.incsearch = true
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.scrolloff = 8
opt.wrap = false
opt.undofile = true
opt.completeopt = "menuone,noselect"
