return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      'saghen/blink.cmp',
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        pts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      local util = require('lspconfig/util')

      -- Existing LSP setups
      require("lspconfig").lua_ls.setup { capabilities = capabilities }
      require("lspconfig").ts_ls.setup { capabilities = capabilities }
      require("lspconfig").texlab.setup { capabilities = capabilities }
      require("lspconfig").ocamllsp.setup { capabilities = capabilities }
      require("lspconfig").prolog_ls.setup { capabilities = capabilities,
        default_config = {
          cmd = { "swipl",
            "-g", "use_module(library(lsp_server)).",
            "-g", "lsp_server:main",
            "-t", "halt",
            "--", "stdio" },
          filetypes = { "prolog", "pl" },
          root_dir = util.root_pattern("pack.pl"),
        },
        docs = {
          description = [[
  https://github.com/jamesnvc/prolog_lsp

  Prolog Language Server
  ]],
        }
      }

      -- Existing autocmd for formatting
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then return end
          ---@diagnostics disable-next-line: missing-parameter
          if client.supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
              buffer = args.buf,
              callback = function()
                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
              end,
            })
          end
        end,
      })
    end,
  }
}
