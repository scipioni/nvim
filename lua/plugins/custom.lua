local plugins = {
    {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        opts = {
            git = {
                enable = true,
            },
            renderer = {
                highlight_git = true,
                icons = {
                    show = {
                        git = false,
                    },
                },
            },
            view = {
                side = "left",
            },
        },
    },
    -- { "elkowar/yuck.vim" , lazy = false },  -- load a plugin at startup
    -- { "folke/which-key.nvim",  enabled = false },
    --
    -- -- You can use any plugin specification from lazy.nvim
    -- {
    --   "Pocco81/TrueZen.nvim",
    --   cmd = { "TZAtaraxis", "TZMinimalist" },
    --   config = function()
    --     require "configs.truezen" -- just an example path
    --   end,
    -- },
    --
    -- -- this opts will extend the default opts
    -- {
    --   "nvim-treesitter/nvim-treesitter",
    --   opts = {
    --     ensure_installed = {"html", "css", "bash"},
    --   },
    -- },
    --
    -- -- If your opts uses a function call ex: require*, then make opts spec a function
    -- -- should return the modified default config as well
    -- -- here we just call the default telescope config
    -- -- And edit its mappinsg
    -- {
    --   "nvim-telescope/telescope.nvim",
    --   opts = function()
    --     local conf = require "nvchad.configs.telescope"
    --
    --     conf.defaults.mappings.i = {
    --       ["<C-j>"] = require("telescope.actions").move_selection_next,
    --       ["<Esc>"] = require("telescope.actions").close,
    --     }
    --
    --    -- or
    --    -- table.insert(conf.defaults.mappings.i, your table)
    --
    --     return conf
    --   end,
    -- }
    -- {
    --     "kelly-lin/ranger.nvim",
    --     config = function()
    --         require("ranger-nvim").setup({ replace_netrw = true })
    --         vim.api.nvim_set_keymap("n", "<leader>ef", "", {
    --             noremap = true,
    --             callback = function()
    --                 require("ranger-nvim").open(true)
    --             end,
    --         })
    --     end,
    -- },
}

return plugins
