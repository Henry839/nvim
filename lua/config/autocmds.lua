-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("Filetype", {
  pattern = { "*" },
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions + {
      o = false, -- Don't continue comments with o and O
    }
  end,
  desc = "Don't continue comments with o and O",
})

local augroup = vim.api.nvim_create_augroup("CodexFixedWidth", { clear = true })

vim.api.nvim_create_autocmd("TermOpen", {
  group = augroup,
  pattern = "*codex*",
  callback = function()
    -- optional: set an initial width (e.g. 80 columns)
    vim.cmd("vertical resize 50")

    -- lock width so it doesn't change when other windows open/close
    vim.wo.winfixwidth = true
  end,
})
