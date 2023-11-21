vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>w", ":wa<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>Q", ":wqa<CR>")

vim.keymap.set("n", "Y", "yy")

vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>u", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>i", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action)

vim.keymap.set("n", "<leader>l", function ()
    if vim.opt.background._value == "light" then
        vim.opt.background="dark"
    else
        vim.opt.background="light"
    end
end)

vim.keymap.set("n", "<C-H>", "<C-W><C-H>")
vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")

vim.keymap.set("n", "<C-Q>", "<C-W><C-Q>")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "Q", "<nop>")
