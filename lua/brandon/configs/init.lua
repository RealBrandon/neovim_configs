require("brandon.configs.lsp")
require("brandon.configs.cmp")
require("brandon.configs.telescope")
require("brandon.configs.treesitter")

-- Configure Oil
require("oil").setup({
    delete_to_trash = true,
})


-- Configure markdown-preview to open in a new browser window.
vim.cmd([[
  function OpenMarkdownPreview(url)
    execute "silent ! firefox --new-window " . a:url
  endfunction
]])
vim.g.mkdp_browserfunc = 'OpenMarkdownPreview'

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
