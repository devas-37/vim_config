-- local actions = require("telescope.actions")
-- local fb_actions = require "telescope".extensions.file_browser.actions
--
-- local telescope = require 'telescope'
-- telescope.setup {
--   defaults = {
--     mappings = {
--       i = {
--         ["<C-h>"] = "which_key"
--       },
--       n = {
--         f = false,
--         ["q"] = actions.close
--         , ["N"] = fb_actions.create,
--         ["h"] = fb_actions.goto_parent_dir,
--         ["/"] = function()
--           vim.cmd('startinsert')
--         end,
--         ['<leader>rr'] = fb_actions.rename
--       }
--     }
--   },
--   pickers = {
--   },
--   extensions = {
--     file_browser = {
--       hijack_netrw = true,
--
--     }
--   }
--
-- }
-- local function telescope_buffer_dir()
--   return vim.fn.expand('%:p:h')
-- end
--
-- require("telescope").load_extension "file_browser"
-- vim.keymap.set("n", "<leader>ft", function()
--   telescope.extensions.file_browser.file_browser({
--     path = "%:p:h",
--     cwd = telescope_buffer_dir(),
--     cwd_to_path = true,
--     respect_gitignore = false,
--     hidden = true,
--     grouped = true,
--     initial_mode = "normal",
--     layout_config = { height = 40 }
--   })
-- end)
local actions = require('telescope.actions')
require('telescope').setup {
  defaults = {
    layout_config = {
      width = 0.75,
      prompt_position = "bottom",
      preview_cutoff = 120,
      horizontal = { mirror = false },
      vertical = { mirror = true }
    },
    find_command = {
      'rg', '--no-heading', '--with-filename', '--line-number', '--column'
    },
    prompt_prefix = " ",
    selection_caret = "- ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    file_sorter = require 'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter = require 'telescope.sorters'.get_generic_fuzzy_sorter,
    path_display = {},
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require 'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require 'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require 'telescope.previewers'.vim_buffer_qflist.new,
    buffer_previewer_maker = require 'telescope.previewers'.buffer_previewer_maker,
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default + actions.center
      },
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist
      }
    }
  }
}
