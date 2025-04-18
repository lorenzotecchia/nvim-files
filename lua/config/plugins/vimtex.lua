return {
  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_view_skim_activate = 1
      vim.g.vimtex_view_skim_sync = 1
      vim.g.vimtex_view_skim_reading_bar = 1
      vim.g.vimtex_quickfix_autoclose_after_keystrokes = 1
      vim.g.vimtex_complete_enabled = 0
      vim.keymap.set("n", "<leader>vv", "<Plug>(vimtex-view)")
      vim.keymap.set("n", "<leader>vc", "<Plug>(vimtex-compile)")
    end,
  }
}
