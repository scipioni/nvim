local plugins = {
  {
    "LintaoAmons/bookmarks.nvim",
    lazy = false,
    -- pin the plugin at specific version for stability
    -- backup your bookmark sqlite db when there are breaking changes
    -- tag = "v2.3.0",
    dependencies = {
      { "kkharji/sqlite.lua" },
      { "nvim-telescope/telescope.nvim" },
    },
    config = function()
      local opts = {} -- go to the following link to see all the options in the deafult config file
      require("bookmarks").setup(opts) -- you must call setup to init sqlite db
    end,
  },
}

return plugins
