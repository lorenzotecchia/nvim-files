return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      desc = "Format buffer",
      mode = { "n", "v" },
    },
  },
  opts = {
    -- Auto-format on save. If no external formatter is configured, fall back to LSP.
    format_on_save = {
      lsp_fallback = true,
      timeout_ms = 1000,
    },
    -- Choose the formatter(s) per filetype
    formatters_by_ft = {
      python = { "isort", "black" },
      lua = { "stylua" },
      c = { "clang-format" },
      cpp = { "clang-format" },
      objc = { "clang-format" },
      objcpp = { "clang-format" },
      cuda = { "clang-format" },
    },
  },
}
