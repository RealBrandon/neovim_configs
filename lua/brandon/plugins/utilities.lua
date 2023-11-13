return {
    -- mason
    {
        "williamboman/mason.nvim",
        config = true,
    },

    -- nvim-tree
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = true,
    },
}
