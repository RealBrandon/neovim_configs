return {
    -- lualine
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            options = {
                theme = "catppuccin",
            },
        },
    },

    -- navic
    {
        "SmiteshP/nvim-navic",
        dependencies = { "neovim/nvim-lspconfig" },
        -- Enable hightlight to work with Catppuccin theme.
        opts = { hightlight = true },
    },

    -- Dependencies
    { "nvim-tree/nvim-web-devicons", lazy = true },
}
