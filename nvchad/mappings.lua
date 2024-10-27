require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "gd", "<cmd>Telescope lsp_definitions <CR>")
map("n", "gr", "<cmd> Telescope lsp_references <CR>")
map("t", "<ESC>", "<C-\\><C-n>", { noremap=true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
