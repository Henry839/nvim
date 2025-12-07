return {
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- pyright configuration (keep existing)
        pyright = {
          enabled = true,
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "off",
                diagnosticSeverityOverrides = {
                  reportGeneralTypeIssues = "none",
                  reportAssignmentType = "none",
                  reportArgumentType = "none",
                  reportAttributeAccessIssue = "none",
                  reportPossiblyUnboundVariable = "none",
                },
              },
            },
          },
        },
        -- ADD THIS NEW SECTION FOR RUFF:
        ruff = {
          init_options = {
            settings = {
              lint = {
                -- I001: Import block is un-sorted
                -- UP006: Use `dict` instead of `Dict`
                ignore = { "I001", "UP006"},
              },
            },
          },
        },
      },
    },
  },
  -- Lean support
  {
      'Julian/lean.nvim',
      event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },
      dependencies = {
          'neovim/nvim-lspconfig',
          'nvim-lua/plenary.nvim',
          -- optional dependencies:

          -- a completion engine
          --    hrsh7th/nvim-cmp or Saghen/blink.cmp are popular choices

          -- 'nvim-telescope/telescope.nvim', -- for 2 Lean-specific pickers
          -- 'andymass/vim-matchup',          -- for enhanced % motion behavior
          -- 'andrewradev/switch.vim',        -- for switch support
          -- 'tomtom/tcomment_vim',           -- for commenting
      },
       ---@type lean.Config
      opts = { -- see below for full configuration options
      mappings = true,
      }
  }

}


