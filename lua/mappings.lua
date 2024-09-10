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

-- map("", "<leader>l", function()
--    require("conform").format({ async = true, lsp_fallback = true })
-- end, { desc = "format document" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
