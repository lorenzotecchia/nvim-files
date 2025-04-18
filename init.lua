print("advent of neovim configuration")

require("config.lazy")

vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.tabstop = 2


vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")
vim.keymap.set('n', '<leader>tt', ':Floaterminal<CR>', { noremap = true, silent = true })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when  yanking (coping) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
