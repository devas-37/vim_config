local actions = require("telescope.actions")
local fb_actions = require "telescope".extensions.file_browser.actions

local telescope = require 'telescope'
telescope.setup {
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      },
      n = {
        f = false,
        ["q"] = actions.close
        , ["N"] = fb_actions.create,
        ["h"] = fb_actions.goto_parent_dir,
        ["/"] = function()
          vim.cmd('startinsert')
        end,
        ['<leader>rr'] = fb_actions.rename
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
    file_browser = {
      theme = "dropdown",
      hijack_netrw = true,

    }
  }

}
local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

require("telescope").load_extension "file_browser"
require("telescope").load_extension "lazygit"
vim.keymap.set("n", "<leader>ff", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    cwd_to_path = true,
    respect_gitignore = false,
    hidden = false,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)
