require("brandon.configs.lsp")
require("brandon.configs.cmp")
require("brandon.configs.telescope")
require("brandon.configs.treesitter")

-- Configure Oil
require("oil").setup({
    delete_to_trash = true,
})

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
