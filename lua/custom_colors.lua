-- ~/.config/nvim/lua/custom_colors.lua
-- or part of your init.lua

-- Set to true if you want to apply these settings, false to disable
-- Useful for easily toggling this custom theme
local enabled = true

if not enabled then
  return
end

-- Apply these settings immediately
vim.cmd('hi clear')       -- Clear existing highlighting
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset') -- Reset syntax highlighting
end

vim.o.background = 'dark'             -- Important for Neovim to know the background type
vim.g.colors_name = 'my_ghostty_port' -- Name your colorscheme

-- Helper function to set highlights
local function sethl(group, style)
  vim.api.nvim_set_hl(0, group, style)
end

-- Define your Ghostty colors
-- Define your Ghostty colors
local colors = {
  bg = '#282c34',
  fg = '#ffffff',

  -- ANSI Colors (from your Ghostty palette)
  black = '#1d1f21',          -- palette 0
  red = '#cc6666',            -- palette 1
  green = '#b5bd68',          -- palette 2
  yellow = '#f0c674',         -- palette 3
  blue = '#81a2be',           -- palette 4
  magenta = '#b294bb',        -- palette 5
  cyan = '#8abeb7',           -- palette 6
  white = '#c5c8c6',          -- palette 7

  bright_black = '#666666',   -- palette 8 (DarkGray)
  bright_red = '#d54e53',     -- palette 9
  bright_green = '#b9ca4a',   -- palette 10
  bright_yellow = '#e7c547',  -- palette 11
  bright_blue = '#7aa6da',    -- palette 12
  bright_magenta = '#c397d8', -- palette 13
  bright_cyan = '#70c0b1',    -- palette 14
  bright_white = '#eaeaea',   -- palette 15

  -- UI Colors (adapt as needed)
  selection_bg = '#585858', -- Example, as Ghostty's was not set (using palette 240)
  -- CORRECTED LINE BELOW:
  selection_fg = '#ffffff', -- Directly use the fg value here
  -- Or, if you want it to be different, specify a new hex code.

  -- For cursor_bg and cursor_fg, it's fine as they are if you intend them to be specific values
  -- If you wanted cursor_bg = colors.fg, that would also need to be '#ffffff' directly here.
  cursor_bg = '#ffffff',         -- Example for inverted cursor (was colors.fg)
  cursor_fg = '#282c34',         -- Example for inverted cursor (was colors.bg)

  comment = '#666666',           -- Example, using bright_black for comments
  line_nr_bg = '#282c34',        -- Was colors.bg
  line_nr_fg = '#666666',        -- Was colors.bright_black
  status_line_bg = '#666666',    -- Was colors.bright_black
  status_line_fg = '#ffffff',    -- Was colors.fg
  status_line_nc_bg = '#444444',
  status_line_nc_fg = '#666666', -- Was colors.bright_black
  popup_bg = '#303030',
  popup_fg = '#c5c8c6',          -- Was colors.white
  visual_bg = '#4e4e4e',
  diff_add_bg = '#3a573a',
  diff_change_bg = '#3a3a57',
  diff_delete_bg = '#573a3a',
  split_bg = '#282c34', -- Was colors.bg
  split_fg = '#666666', -- Was colors.bright_black
}

-- The rest of your script can remain the same
-- ... (sethl functions, vim.g.terminal_color_X, etc.)
-- Terminal colors (important for :terminal in Neovim)
-- These will directly use the colors defined by Ghostty's palette when Neovim runs in Ghostty.
-- However, setting them here ensures consistency if you ever run this Neovim config
-- in a different terminal or if a Neovim plugin specifically queries these.
vim.g.terminal_color_0 = colors.black
vim.g.terminal_color_1 = colors.red
vim.g.terminal_color_2 = colors.green
vim.g.terminal_color_3 = colors.yellow
vim.g.terminal_color_4 = colors.blue
vim.g.terminal_color_5 = colors.magenta
vim.g.terminal_color_6 = colors.cyan
vim.g.terminal_color_7 = colors.white
vim.g.terminal_color_8 = colors.bright_black
vim.g.terminal_color_9 = colors.bright_red
vim.g.terminal_color_10 = colors.bright_green
vim.g.terminal_color_11 = colors.bright_yellow
vim.g.terminal_color_12 = colors.bright_blue
vim.g.terminal_color_13 = colors.bright_magenta
vim.g.terminal_color_14 = colors.bright_cyan
vim.g.terminal_color_15 = colors.bright_white

-- Base colors
sethl('Normal', { fg = colors.fg, bg = colors.bg })
sethl('NormalNC', { fg = colors.fg, bg = colors.bg }) -- Non-current windows
sethl('EndOfBuffer', { fg = colors.bright_black })    -- ~ characters at the end

-- UI elements
sethl('Cursor', { fg = colors.cursor_fg, bg = colors.cursor_bg, reverse = true }) -- Or specify explicit colors
sethl('Visual', { bg = colors.visual_bg })                                        -- `selection-background`
sethl('LineNr', { fg = colors.line_nr_fg, bg = colors.line_nr_bg })
sethl('SignColumn', { bg = colors.line_nr_bg, fg = colors.bright_blue })
sethl('Folded', { fg = colors.comment, bg = colors.bright_black })
sethl('StatusLine', { fg = colors.status_line_fg, bg = colors.status_line_bg, bold = true })
sethl('StatusLineNC', { fg = colors.status_line_nc_fg, bg = colors.status_line_nc_bg }) -- Non-current status line
sethl('TabLine', { fg = colors.status_line_nc_fg, bg = colors.status_line_nc_bg })
sethl('TabLineSel', { fg = colors.status_line_fg, bg = colors.status_line_bg, bold = true })
sethl('TabLineFill', { bg = colors.status_line_nc_bg })
sethl('Pmenu', { fg = colors.popup_fg, bg = colors.popup_bg })             -- Popup menu
sethl('PmenuSel', { fg = colors.popup_bg, bg = colors.blue, bold = true }) -- Selected item in Pmenu
sethl('PmenuSbar', { bg = colors.bright_black })                           -- Scrollbar
sethl('PmenuThumb', { bg = colors.white })

sethl('VertSplit', { fg = colors.split_fg, bg = colors.split_bg }) -- Separator for vertical splits

-- Syntax Highlighting (Basic Examples - expand this significantly for a full theme)
sethl('Comment', { fg = colors.comment, italic = true })
sethl('Constant', { fg = colors.magenta }) -- String, Number, Boolean, Float
sethl('String', { fg = colors.green })
sethl('Character', { fg = colors.green })
sethl('Number', { fg = colors.yellow })
sethl('Boolean', { fg = colors.yellow, bold = true })
sethl('Float', { fg = colors.yellow })

sethl('Identifier', { fg = colors.blue }) -- Variable names
sethl('Function', { fg = colors.cyan, bold = true })

sethl('Statement', { fg = colors.red, bold = true }) -- Keywords like if, else, for, while
sethl('Conditional', { fg = colors.red, bold = true })
sethl('Repeat', { fg = colors.red, bold = true })
sethl('Label', { fg = colors.yellow })
sethl('Operator', { fg = colors.fg })
sethl('Keyword', { fg = colors.red })
sethl('Exception', { fg = colors.red, bold = true })

sethl('PreProc', { fg = colors.yellow }) -- #include, #define
sethl('Include', { fg = colors.yellow })
sethl('Define', { fg = colors.yellow })
sethl('Macro', { fg = colors.yellow })

sethl('Type', { fg = colors.bright_yellow, bold = true }) -- int, char, struct
sethl('StorageClass', { fg = colors.red, italic = true }) -- static, extern
sethl('Structure', { fg = colors.bright_yellow })         -- struct, union, enum
sethl('Typedef', { fg = colors.bright_yellow })

sethl('Special', { fg = colors.bright_cyan })     -- Special symbols
sethl('SpecialKey', { fg = colors.bright_black }) -- Unprintable characters in Normal text

sethl('Underlined', { underline = true, fg = colors.blue })
sethl('Ignore', {}) -- Group that should be hidden
sethl('Error', { fg = colors.bright_white, bg = colors.bright_red, bold = true })
sethl('Todo', { fg = colors.black, bg = colors.yellow, bold = true, italic = true })

-- Diffs
sethl('DiffAdd', { bg = colors.diff_add_bg })
sethl('DiffChange', { bg = colors.diff_change_bg })
sethl('DiffDelete', { fg = colors.bright_red, bg = colors.diff_delete_bg, bold = true })
sethl('DiffText', { bg = colors.blue, fg = colors.bright_white, bold = true }) -- Text inside a changed block

-- Search
sethl('Search', { bg = colors.yellow, fg = colors.black })
sethl('IncSearch', { bg = colors.red, fg = colors.white })

-- Spelling
sethl('SpellBad', { undercurl = true, sp = colors.red })
sethl('SpellCap', { undercurl = true, sp = colors.yellow })
sethl('SpellRare', { undercurl = true, sp = colors.magenta })
sethl('SpellLocal', { undercurl = true, sp = colors.cyan })

-- LSP (Language Server Protocol) Diagnostics
sethl('LspDiagnosticsDefaultError', { fg = colors.red })
sethl('LspDiagnosticsDefaultWarning', { fg = colors.yellow })
sethl('LspDiagnosticsDefaultInformation', { fg = colors.blue })
sethl('LspDiagnosticsDefaultHint', { fg = colors.cyan })
sethl('LspDiagnosticsUnderlineError', { undercurl = true, sp = colors.red })
sethl('LspDiagnosticsUnderlineWarning', { undercurl = true, sp = colors.yellow })
sethl('LspDiagnosticsUnderlineInformation', { undercurl = true, sp = colors.blue })
sethl('LspDiagnosticsUnderlineHint', { undercurl = true, sp = colors.cyan })
