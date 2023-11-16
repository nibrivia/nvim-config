vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>w", ":wa<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>Q", ":wqa<CR>")

vim.keymap.set("n", "Y", "yy")

vim.keymap.set("n", "<leader>d", "gd")
-- vim.keymap.set("n", "<leader>u", "gr")
-- vim.keymap.set("n", "<leader>R", vim.lsp)

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")
