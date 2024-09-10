return {

    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.treesitter")
        end,
    },

    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require("configs.lspconfig")
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-lspconfig" },
        config = function()
            require("configs.mason-lspconfig")
        end,
    },

    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.lint")
        end,
    },

    {
        "rshkarin/mason-nvim-lint",
        event = "VeryLazy",
        dependencies = { "nvim-lint" },
        config = function()
            require("configs.mason-lint")
        end,
    },

    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        --         keys = {
        --             {
        --                 -- Customize or remove this keymap to your liking
        --                 "<leader>l",
        --                 function()
        --                     require("conform").format({ async = true })
        --                 end,
        --                 mode = "",
        --                 desc = "Format buffer",
        --             },
        --         },
        config = function()
            require("configs.conform")
        end,
    },

    {
        "zapling/mason-conform.nvim",
        event = "VeryLazy",
        dependencies = { "conform.nvim" },
        config = function()
            require("configs.mason-conform")
        end,
    },

    {
        "LintaoAmons/bookmarks.nvim",
        lazy = false,
        -- tag = "v0.5.4", -- optional, pin the plugin at specific version for stability
        dependencies = {
            { "nvim-telescope/telescope.nvim" },
            { "stevearc/dressing.nvim" }, -- optional: to have the same UI shown in the GIF
        },
        config = function()
            require("configs.bookmarks")
        end,
    },
}
