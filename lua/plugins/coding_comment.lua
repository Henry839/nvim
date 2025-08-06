return {
  -- python docstring
  {
  "kkoomen/vim-doge",
  config = function()
    vim.g.doge_enable_mappings = 0
    vim.g.doge_doc_standard_python = "google"  -- 👈 this sets Google-style docstring
  end
  }

}
