local actions = require("telescope.actions")
local fb_actions = require "telescope".extensions.file_browser.actions
local builtin = require("telescope.builtin")
require("telescope").load_extension "file_browser"
local telescope = require 'telescope'
telescope.setup {
  defaults = {
    prompt_prefix = " ",
    qflist_previewer = false,
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      },
      n = {
        f = false,
        ["q"] = actions.close,
        ["N"] = fb_actions.create,
        ["<Backspace>"] = fb_actions.goto_parent_dir,
        ["/"] = function()
          vim.cmd('startinsert')
        end,
        ['<leader>rr'] = fb_actions.rename
      }
    },
    initial_mode = "normal"
  },
  pickers = {
  },
  extensions = {
    file_browser = {
      hijack_netrw = true,
    }
  }
}

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

vim.keymap.set("n", "<leader>ft", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    cwd_to_path = true,
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    initial_mode = "normal",
    layout_config = { height = 40 },
    collapse_dirs = true
  })
end)

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

vim.keymap.set("n", "<leader>tf", builtin.treesitter, {})
vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
