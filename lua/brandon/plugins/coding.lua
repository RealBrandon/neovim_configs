return {


    -- LSP
    {
        "williamboman/mason-lspconfig.nvim",
        config = true,
        dependencies = {"williamboman/mason.nvim"},
    },
    {"VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
    {"neovim/nvim-lspconfig"},

    -- Auto completion
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/nvim-cmp"},

    -- Debugging
    {"mfussenegger/nvim-dap"},
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {"mfussenegger/nvim-dap"}
    },

    {"L3MON4D3/LuaSnip"},
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
}
