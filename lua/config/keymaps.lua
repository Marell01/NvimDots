-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Vim-style remaps
map("n", "j", "h", opts)
map("n", "k", "j", opts)
map("n", "l", "k", opts)
map("n", ";", "l", opts)

-- Window navigation
map("n", "<leader><C-j>", "<C-w>h", opts)
map("n", "<leader><C-k>", "<C-w>j", opts)
map("n", "<leader><C-l>", "<C-w>k", opts)
map("n", "<leader><C-;>", "<C-w>l", opts)

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
