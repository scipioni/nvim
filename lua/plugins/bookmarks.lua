local plugins = {
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

return plugins
