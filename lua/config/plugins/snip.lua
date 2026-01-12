return {
  "L3MON4D3/LuaSnip",
  dependencies = { "rafamadriz/friendly-snippets" },
  version = "v2.*",
  build = "make install_jsregexp",
  event = "InsertEnter",
  config = function()
    local ls = require("luasnip")

    ls.setup({
      update_events = { "TextChanged", "TextChangedI" },
      enable_autosnippets = true,
      store_selection_keys = "<Tab>",

      -- still required for runtime
      snip_env = {
        s = function(...)
          local snip = ls.s(...)
          table.insert(getfenv(2).ls_file_snippets, snip)
        end,
        parse = function(...)
          local snip = ls.parser.parse_snippet(...)
          table.insert(getfenv(2).ls_file_snippets, snip)
        end,

        -- node constructors and helpers
        t = ls.text_node,
        i = ls.insert_node,
        f = ls.function_node,
        c = ls.choice_node,
        d = ls.dynamic_node,
        sn = ls.snippet_node,
        isn = ls.indent_snippet_node,
        fmt = require("luasnip.extras.fmt").fmt,
        fmta = require("luasnip.extras.fmt").fmta,
        rep = require("luasnip.extras").rep,
        l = require("luasnip.extras").lambda,
        tex = require("luasnip.extras.conditions.expand"),
      },
    })

    -- load snippets from your folder
    require("luasnip.loaders.from_lua").lazy_load({
      paths = vim.fn.stdpath("config") .. "/LuaSnip",
    })

    -- extend markdown with tex snippets for math support
    ls.filetype_extend("markdown", { "tex" })

    -- keymaps
    vim.keymap.set({ "i" }, "<Tab>", function()
      if ls.expand_or_jumpable() then
        return "<Plug>luasnip-expand-or-jump"
      else
        return "<Tab>"
      end
    end, { expr = true, silent = true })
    vim.keymap.set({ "i", "s" }, "<C-j>", function()
      ls.jump(1)
    end, { silent = true, desc = "next node" })
    vim.keymap.set({ "i", "s" }, "<C-k>", function()
      ls.jump(-1)
    end, { silent = true, desc = "prev node" })
    vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
      if ls.choice_active() then
        ls.change_choice(1)
      end
    end, { silent = true, desc = "cycle choice" })
  end,
}
