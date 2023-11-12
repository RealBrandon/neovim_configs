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

local navic = require("nvim-navic")

local on_attach = function(client, bufnr)
    if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)
    end
end

-- Common configurations for all language servers
lsp_zero.set_server_config({
    on_attach = on_attach,
})

-- Setup language servers.
require('mason-lspconfig').setup({
    ensure_installed = {'bashls', 'rust_analyzer', 'lua_ls', 'pylsp'},
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            -- Returns settings specific to Neovim for the lua language server, lua_ls.
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
        end,
    }
})
