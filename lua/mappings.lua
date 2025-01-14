require "nvchad.mappings"
-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- bookmarks
map({ "n", "v" }, "mm", "<cmd>BookmarksMark<cr>", { desc = "Mark current line into active BookmarkList." })
map({ "n", "v" }, "mo", "<cmd>BookmarksGoto<cr>", { desc = "Go to bookmark at current active BookmarkList" })
map({ "n", "v" }, "ma", "<cmd>BookmarksCommands<cr>", { desc = "Find and trigger a bookmark command." })
map({ "n", "v" }, "mg", "<cmd>BookmarksGotoRecent<cr>", { desc = "Go to latest visited/created Bookmark" })
map({ "n", "v" }, "<leader>wo", "<cmd>WorkspacesOpen<cr>", { desc = "Workspace open" })

-- Yank into system clipboard
map({ "n", "v" }, "<leader>y", '"+y', { desc = "yank motion to clipboard" })
map({ "n", "v" }, "<leader>Y", '"+Y', { desc = "yank line to clipboard" })

-- Delete into system clipboard
map({ "n", "v" }, "<leader>d", '"+d', { desc = "delete motion to clipboard" })
map({ "n", "v" }, "<leader>D", '"+D', { desc = "delete line to clipboard" })

-- Paste from system clipboard
map("n", "<leader>p", '"+p', { desc = "paste after cursor from clipboard" })
map("n", "<leader>P", '"+P', { desc = "paste before cursor from clipboard" })
