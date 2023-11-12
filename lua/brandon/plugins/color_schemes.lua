return {
    -- TokyoNight
    --{
    --    "folke/tokyonight.nvim",
    --    lazy = false,
    --    priority = 1000,
    --    opts = {
    --        style = "night",
    --        transparent = false,
    --    },
    --},

    -- Catppuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            integrations = {
                mason = true,
                navic = {
                    enabled = false,
                    custom_bg = "NONE", -- "lualine" will set background to mantle
                },
                native_lsp = {
                    enabled = true,
                    virtual_text = {
                        errors = { "italic" },
                        hints = { "italic" },
                        warnings = { "italic" },
                        information = { "italic" },
                    },
                    underlines = {
                        errors = { "underline" },
                        hints = { "underline" },
                        warnings = { "underline" },
                        information = { "underline" },
                    },
                    inlay_hints = {
                        background = true,
                    },
                },

            }
        }
    }
}
