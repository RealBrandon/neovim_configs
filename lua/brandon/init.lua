-- Always set leader keys first to ensure
-- plugins are loaded with the correct leader keys.
vim.g.mapleader = " "
require("brandon.pkg_mgr")
require("brandon.options")
require("brandon.keymaps")
require("brandon.configs")

