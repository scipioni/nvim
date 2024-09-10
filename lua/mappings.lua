require("nvchad.mappings")
-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("", "<leader>cf", function()
    require("conform").format({ async = true })
end, { desc = "Format code" })

-- map("", "<leader>l", function()
--    require("conform").format({ async = true, lsp_fallback = true })
-- end, { desc = "format document" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
