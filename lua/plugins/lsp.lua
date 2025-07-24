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
  }
}


