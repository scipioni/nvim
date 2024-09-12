local plugins = {
    {
        "nvim-telescope/telescope-media-files.nvim",
        lazy = false,
        config = function()
            require("telescope").load_extension("media_files")
            require("telescope").setup({
                extensions = {
                    media_files = {
                        -- filetypes whitelist
                        -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
                        filetypes = { "png", "webp", "jpg", "jpeg" },
                        -- find command (defaults to `fd`)
                        find_cmd = "rg",
                    },
                },
            })
        end,
    },
}

return plugins
