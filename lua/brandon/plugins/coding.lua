return {
    -- LSP
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "williamboman/mason-lspconfig.nvim",
                opts = {},
                dependencies = { "williamboman/mason.nvim", opts = {} },
            },

            { "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },

            -- Useful status updates for LSP
            { "j-hui/fidget.nvim",         opts = {} },

            -- Additional lua configuration
            --"folke/neodev.nvim",
        },
    },

    -- Auto completion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            -- Snippet Engine & its associated nvim-cmp source
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",

            -- Adds LSP completion capabilities
            "hrsh7th/cmp-nvim-lsp",

            -- Adds a number of user-friendly snippets
            "rafamadriz/friendly-snippets",
        }
    },

    -- Debugging
    { "mfussenegger/nvim-dap" },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap" }
    },

    {
        -- Highlight, edit, and navigate code
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        build = ":TSUpdate",
    },

    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },

    -- Detect tabstop and shiftwidth automatically
    "tpope/vim-sleuth",

    {
        -- Add indentation guides even on blank lines
        "lukas-reineke/indent-blankline.nvim",
        -- Enable `lukas-reineke/indent-blankline.nvim`
        -- See `:help ibl`
        main = "ibl",
        opts = {}
    },

    -- "gc" to comment visual regions/lines
    { "numToStr/Comment.nvim", opts = {} },

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    }
}
