return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "saghen/blink.cmp",
      {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },

    config = function()
      local blink = require("blink.cmp")

      ------------------------------------------------------------------------
      -- 🧩 Capabilities (blink + UTF-16 fix)
      ------------------------------------------------------------------------
      local capabilities = blink.get_lsp_capabilities()
      capabilities.general = capabilities.general or {}
      capabilities.general.positionEncodings = { "utf-16" }

      ------------------------------------------------------------------------
      -- ⚙️ On-attach (per-buffer LSP setup)
      ------------------------------------------------------------------------
      local on_attach = function(client, bufnr)
        local opts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      end

      ------------------------------------------------------------------------
      -- 🌍 Default config for all servers
      ------------------------------------------------------------------------
      vim.lsp.config("*", {
        capabilities = capabilities,
        on_attach = on_attach,
      })

      ------------------------------------------------------------------------
      -- 🧠 clangd setup
      ------------------------------------------------------------------------
      vim.lsp.config("clangd", {
        cmd = {
          "clangd",
          "--background-index",
          "--log=verbose",
        },
        init_options = {
          fallbackFlags = { "-std=c++23" },
        },
      })

      ------------------------------------------------------------------------
      -- 🧹 Auto-formatting on save (async, non-blocking)
      ------------------------------------------------------------------------
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = true }),
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then
            return
          end
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = args.buf,
              callback = function()
                vim.lsp.buf.format({
                  async = true, -- 🚀 async to prevent blocking
                  id = client.id,
                  bufnr = args.buf,
                })
              end,
            })
          end
        end,
      })

      ------------------------------------------------------------------------
      -- 🐍 Disable Ruff hover (let Pyright handle it)
      ------------------------------------------------------------------------
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client and client.name == "ruff" then
            client.server_capabilities.hoverProvider = false
          end
        end,
        desc = "LSP: Disable hover capability from Ruff",
      })

      ------------------------------------------------------------------------
      -- 🚀 Enable servers
      ------------------------------------------------------------------------
      vim.lsp.enable({
        "pyright",
        "clangd",
        "texlab",
        "stylua",
        "lua_ls",
        "black",
        "marksman",
        "checkmake",
      })
    end,
  },
}
