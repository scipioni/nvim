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
    {
        "natecraddock/sessions.nvim",
        lazy = false,
        opts = {
            -- autocmd events which trigger a session save
            --
            -- the default is to only save session files before exiting nvim.
            -- you may wish to also save more frequently by adding "BufEnter" or any
            -- other autocmd event
            events = { "VimLeavePre" },

            -- default session filepath
            --
            -- if a path is provided here, then the path argument for commands and API
            -- functions will use session_filepath as a default if no path is provided.
            session_filepath = ".nvim/session",

            -- treat the default session filepath as an absolute path
            -- if true, all session files will be stored in a single directory
            absolute = false,
            -- events = { "WinEnter" },
        },
    },

    {
        "natecraddock/workspaces.nvim",
        lazy = false,
        opts = {
            -- path to a file to store workspaces data in
            -- on a unix system this would be ~/.local/share/nvim/workspaces
            path = vim.fn.stdpath("data") .. "/workspaces",

            -- to change directory for nvim (:cd), or only for window (:lcd)
            -- deprecated, use cd_type instead
            -- global_cd = true,

            -- controls how the directory is changed. valid options are "global", "local", and "tab"
            --   "global" changes directory for the neovim process. same as the :cd command
            --   "local" changes directory for the current window. same as the :lcd command
            --   "tab" changes directory for the current tab. same as the :tcd command
            --
            -- if set, overrides the value of global_cd
            cd_type = "global",

            -- sort the list of workspaces by name after loading from the workspaces path.
            sort = true,

            -- sort by recent use rather than by name. requires sort to be true
            mru_sort = true,

            -- option to automatically activate workspace when opening neovim in a workspace directory
            auto_open = false,

            -- option to automatically activate workspace when changing directory not via this plugin
            auto_dir = false,

            -- enable info-level notifications after adding or removing a workspace
            notify_info = true,

            -- lists of hooks to run after specific actions
            -- hooks can be a lua function or a vim command (string)
            -- lua hooks take a name, a path, and an optional state table
            -- if only one hook is needed, the list may be omitted
            hooks = {
                add = {},
                remove = {},
                rename = {},
                open_pre = {
                    "SessionsSave",
                    "silent %bdelete!",
                },
                open = {
                    "SessionsLoad",
                    "NvimTreeOpen",
                },
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
