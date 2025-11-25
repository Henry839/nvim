-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>ft", function() Snacks.terminal() end, { desc = "Terminal (cwd)" })
vim.keymap.set("n", "<leader>tt", function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })
vim.keymap.set("i", "jj", "<ESC>", { silent = true })

vim.keymap.set({ "i", "x", "n", "s" }, "<leader>ww", "<cmd>w<cr><esc>", { desc = "Save File" })
vim.keymap.set({ "v"}, "<leader>y", "\"+y", { desc = "Yank to +" })

--vim.keymap.set({"t"}, "<leader>n", "<C-\\><C-n>", {desc="excape to terminal normal mode"})
vim.keymap.set({"t"}, "jj", "<C-\\><C-n>", {desc="excape to terminal normal mode"})

vim.keymap.set('n', '<Leader>do', '<Plug>(doge-generate)', { desc = 'Generate docstring' })
vim.keymap.set('n', '<Leader>dn', '<Plug>(doge-comment-jump-forward)', { desc = 'Jump to next docstring' })
vim.keymap.set('n', '<leader>dN', '<Plug>(doge-comment-jump-backward)', { desc = 'Jump to previous docstring' })

-- codex
--vim.keymap.set('n', '<leader>ac', '<cmd>Codex<CR>', { desc = 'Toggle codex' })

