return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",

    -- 🔧 PLUGINS
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

      -- 🔧 Zotero extension plugin
      {
        "jmbuhr/telescope-zotero.nvim",
        dependencies = {
          { "kkharji/sqlite.lua" },
        },
        config = function()
          require("zotero").setup({
            zotero_db_path = vim.fn.expand("~/.zotero/zotero.sqlite"),
            better_bibtex_db_path = vim.fn.expand("~/.zotero/better-bibtex.sqlite"),
            zotero_storage_path = vim.fn.expand("~/.zotero/storage"),
            collection = nil,
            picker = {
              with_icons = true,
              hlgroups = {
                icons = "SpecialChar",
                author_date = "Comment",
                title = "Title",
                author_year = "Author@martelottoBenchmarkingMutationEffect2014Year",
              },
            },
            ft = {},
          })
        end,
      },
    },

    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")
      ----------------------------------------------------------------------
      -- Telescope setup (your original config, plus zotero under extensions)
      ----------------------------------------------------------------------
      telescope.setup({
        pickers = {
          find_files = {
            theme = "ivy",
          },
        },
        extensions = {
          fzf = {},
          zotero = {},
        },
      })

      ----------------------------------------------------------------------
      -- Load extensions
      ----------------------------------------------------------------------
      telescope.load_extension("fzf")
      telescope.load_extension("zotero")

      -- Keymaps (your original ones)
      ----------------------------------------------------------------------
      vim.keymap.set("n", "<space>fh", builtin.help_tags)
      vim.keymap.set("n", "<leader>fb", builtin.buffers)
      vim.keymap.set("n", "<space>ff", builtin.find_files)

      vim.keymap.set("n", "<space>fu", function()
        local ok = pcall(function()
          builtin.lsp_document_symbols({
            symbols = { "Function", "Method" },
          })
        end)
        if not ok then
          vim.notify("Failed to fetch symbols (LSP encoding issue)", vim.log.levels.WARN)
        end
      end, { desc = "Find functions/methods in document" })

      vim.keymap.set("n", "<space>en", function()
        builtin.find_files({
          cwd = vim.fn.stdpath("config"),
        })
      end)

      vim.keymap.set("n", "<space>ep", function()
        builtin.find_files({
          cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy"),
        })
      end)

      ----------------------------------------------------------------------
      -- 🔁 Your multigrep setup (restores <leader>fg etc.)
      ----------------------------------------------------------------------
      require("config.telescope.multigrep").setup()

      ----------------------------------------------------------------------
      -- 🔑 Zotero picker keymap
      ----------------------------------------------------------------------
      vim.keymap.set("n", "<leader>fz", function()
        telescope.extensions.zotero.zotero()
      end, { desc = "Search Zotero library" })
    end,
  },
}
