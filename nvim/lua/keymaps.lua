vim.keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<C-u>", "10k")
vim.keymap.set("n", "<C-d>", "10j")
vim.keymap.set("v", "<C-u>", "10k")
vim.keymap.set("v", "<C-d>", "10j")

vim.keymap.set("n", "<M-Left>", "<cmd>vertical resize -5<CR>")
vim.keymap.set("n", "<M-Down>", "<cmd>resize +5<CR>")
vim.keymap.set("n", "<M-Up>", "<cmd>resize -5<CR>")
vim.keymap.set("n", "<M-Right>", "<cmd>vertical resize +5<CR>")

vim.keymap.set("n", "<leader>h", "<cmd>noh<CR>")

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h")
vim.keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j")
vim.keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k")
