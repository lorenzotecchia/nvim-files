return {
  "AckslD/swenv.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  ft = "python",
  opts = {
    venvs_path = vim.fn.expand("~/venvs"), -- fallback path (optional)
    auto_create_venv = true,
    auto_create_venv_dir = ".venv",        -- supports pip/pyproject/dev-requirements
    post_set_venv = function()
      local client = vim.lsp.get_clients({ name = "basedpyright" })[1]
      if not client then return end
      local venv = require("swenv.api").get_current_venv()
      if not venv then return end
      local venv_python = venv.path .. "/bin/python"
      if client.settings then
        client.settings = vim.tbl_deep_extend("force", client.settings, {
          python = { pythonPath = venv_python },
        })
      else
        client.config.settings = vim.tbl_deep_extend("force", client.config.settings, {
          python = { pythonPath = venv_python },
        })
      end
      client.notify("workspace/didChangeConfiguration", { settings = nil })
    end,
  },
  config = function(_, opts)
    local swenv = require("swenv")
    swenv.setup(opts)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "python",
      callback = function()
        require("swenv.api").auto_venv()
      end,
    })

    -- Telescope-based venv switcher
    local function swenv_picker()
      local pickers = require("telescope.pickers")
      local finders = require("telescope.finders")
      local actions = require("telescope.actions")
      local action_state = require("telescope.actions.state")
      local conf = require("telescope.config").values
      local swenv_api = require("swenv.api")

      local venvs_path = opts.venvs_path or vim.fn.expand("~/venvs")
      if vim.fn.isdirectory(venvs_path) == 0 then
        vim.notify("[swenv] No virtualenvs directory found at: " .. venvs_path, vim.log.levels.WARN)
        return
      end

      local venvs = swenv_api.get_venvs(venvs_path)
      if not venvs or vim.tbl_isempty(venvs) then
        vim.notify("[swenv] No virtual environments found in: " .. venvs_path, vim.log.levels.INFO)
        return
      end

      pickers.new({}, {
        prompt_title = "Select Python Environment",
        finder = finders.new_table({
          results = venvs,
          entry_maker = function(entry)
            return {
              value = entry,
              display = entry.name,
              ordinal = entry.name,
            }
          end,
        }),
        sorter = conf.generic_sorter({}),
        attach_mappings = function(prompt_bufnr, _)
          actions.select_default:replace(function()
            actions.close(prompt_bufnr)
            local selection = action_state.get_selected_entry()
            swenv_api.set_venv(selection.value.name)
          end)
          return true
        end,
      }):find()
    end

    -- Keymap
    vim.keymap.set("n", "<leader>sv", swenv_picker, { desc = "Switch Python venv" })
  end,
}
