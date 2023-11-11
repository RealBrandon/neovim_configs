-- It's important that you set up the plugins in the following order:
-- 1. mason.nvim
-- 2. mason-lspconfig.nvim
-- 3. Setup servers via lspconfig

local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
end)

-- Setup language servers.
require("lspconfig").bashls.setup({})
require("lspconfig").pylsp.setup({})
require("lspconfig").rust_analyzer.setup({})
-- Returns settings specific to Neovim for the lua language server, lua_ls.
local lua_opts = lsp_zero.nvim_lua_ls()
require('lspconfig').lua_ls.setup(lua_opts)
