-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>ft", function() Snacks.terminal() end, { desc = "Terminal (cwd)" })
vim.keymap.set("n", "<leader>tt", function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })
vim.keymap.set("i", "jj", "<ESC>", { silent = true })

vim.keymap.set({ "i", "x", "n", "s" }, "<leader>ww", "<cmd>w<cr><esc>", { desc = "Save File" })
vim.keymap.set({ "v"}, "<leader>y", "\"+y", { desc = "Yank to +" })

