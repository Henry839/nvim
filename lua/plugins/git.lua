return {
  "sindrets/diffview.nvim",
  event = "VeryLazy", -- Optional: Load on startup (remove if you only want it on command)
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
  config = true, -- This runs require("diffview").setup() automatically
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "DiffView Open" },
    { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "DiffView Close" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "File History" },
  },
}
