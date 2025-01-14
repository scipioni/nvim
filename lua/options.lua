require "nvchad.options"

local o = vim.o

-- Indenting
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

-- o.cursorlineopt ='both' -- to enable cursorline!
vim.wo.relativenumber = true

-- unnamedplus interfere with gpaste
-- vim.opt.clipboard = { "unnamedplus" }
vim.opt.clipboard = { }

-- vim.o.mouse = 'a'

