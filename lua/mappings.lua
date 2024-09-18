require("nvchad.mappings")
-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("", "<leader>cf", function()
    require("conform").format({ async = true })
end, { desc = "Format code" })

map({ "n", "v" }, "mm", "<cmd>BookmarksMark<cr>", { desc = "Mark current line into active BookmarkList." })
map({ "n", "v" }, "mo", "<cmd>BookmarksGoto<cr>", { desc = "Go to bookmark at current active BookmarkList" })
map({ "n", "v" }, "ma", "<cmd>BookmarksCommands<cr>", { desc = "Find and trigger a bookmark command." })
map({ "n", "v" }, "mg", "<cmd>BookmarksGotoRecent<cr>", { desc = "Go to latest visited/created Bookmark" })
map({ "n", "v" }, "<leader>wo", "<cmd>WorkspacesOpen<cr>", { desc = "Workspace open" })

-- Yank into system clipboard
map({ "n", "v" }, "<leader>y", '"+y') -- yank motion
map({ "n", "v" }, "<leader>Y", '"+Y') -- yank line

-- Delete into system clipboard
map({ "n", "v" }, "<leader>d", '"+d') -- delete motion
map({ "n", "v" }, "<leader>D", '"+D') -- delete line

-- Paste from system clipboard
map("n", "<leader>p", '"+p') -- paste after cursor
map("n", "<leader>P", '"+P') -- paste before cursor
-- map("", "<leader>l", function()
--    require("conform").format({ async = true, lsp_fallback = true })
-- end, { desc = "format document" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
