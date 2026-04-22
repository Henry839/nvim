-- ~/.config/nvim/lua/plugins/markdown.lua
return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons", -- optional, for icons
    },
    opts = {},
    keys = {
      { "<leader>mr", "<cmd>RenderMarkdown toggle<cr>", desc = "Toggle Markdown render" },
      { "<leader>mp", "<cmd>RenderMarkdown preview<cr>", desc = "Markdown side preview" },
    },
  },
}
