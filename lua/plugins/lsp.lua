return {
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {
          enabled = true,
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "off", -- can be "off", "basic" or "strict"
                diagnosticSeverityOverrides={
                  reportGeneralTypeIssues="none", -- disable general type issues
                  reportAssignmentType="none", -- disable assignment type issues
                  --reportCallIssue="none", -- disable call issues
                  reportArgumentType="none", -- disable argument type issues
                  reportAttributeAccessIssue="none", -- disable attribute access issues"
                  reportPossiblyUnboundVariable="none", -- disable possibly unbound variable issues"
                }
              },
            },
          },
        }
      }
    }
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


