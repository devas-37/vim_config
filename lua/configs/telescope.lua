local status, browser = pcall(require, "telescope")
if (not status) then return end
local actions = require("telescope.actions")
local biltin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end


local fb_actions = require "telescope".extensions.file_browser.actions

browser.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      }
    }
  },
  extensions = {
    file_browser = {
      theme        = 'dropdown',
      hijack_netrw = true,
      mappings     = {
        ["i"] = {
          ["<C-w>"] = function() vim.cmd("normal vbd") end,
        },
        ["n"] = {
          ["f"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["a"] = function()
            vim.cmd("startinsert")
          end
        }
      }
    }
  }
}


vim.keymap.set("n", "<Leader>f", function()
  biltin.find_files({
    no_ignore = false,
    hidden = true
  })
end)

vim.keymap.set("n", "<Leader>e", function()
  browser.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
  })
end)



vim.keymap.set("n", "<Leader>r", function()
  biltin.live_grep()
end)

browser.load_extension("file_browser")
