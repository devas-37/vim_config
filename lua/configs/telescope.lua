local status, browser = pcall(require, "telescope")
local colors = require("theme").base_30
local theme = require("theme")
if not status then
	return
end
local actions = require("telescope.actions")
local biltin = require("telescope.builtin")

local function telescope_buffer_dir()
	return vim.fn.expand("%:p:h")
end

local fb_actions = require("telescope").extensions.file_browser.actions

browser.setup({
	defaults = {
		initial_mode = "insert",
		preview = false,
		file_ignore_patters = {},
		prompt_prefix = "   ",
		selection_caret = "  ",
		entry_prefix = "  ",
		hijack_netrw = false,
		selection_strategy = "row",
		sorting_strategy = "ascending",
		layout_config = {
			height = 0.5,
			width = 0.5,
			prompt_position = "top",
		},
		pickers = {
			find_files = {
				theme = "dropdown",
			},
		},
		mappings = {
			n = {
				["q"] = actions.close,
			},
		},
	},
	extensions = {
		file_browser = {
			hijack_netrw = false,
			mappings = {
				["i"] = {
					["<C-w>"] = function()
						vim.cmd("normal vbd")
					end,
				},
				["n"] = {
					["f"] = fb_actions.create,
					["h"] = fb_actions.goto_parent_dir,
					["n"] = function() end,
					["a"] = function()
						vim.cmd("startinsert")
					end,
				},
			},
		},
	},
})

vim.keymap.set("n", "<C-p>", function()
	biltin.find_files({})
end)

vim.keymap.set("n", "<leader>e", function()
	browser.extensions.file_browser.file_browser({
		path = "%:p:h",
		cwd = telescope_buffer_dir(),
		respect_gitignore = false,
		grouped = true,
		hidden = true,
		previewer = false,
		initial_mode = "normal",
		theme = "dropdown",
		hijack_netrw = false,
	})
end)
vim.keymap.set("n", "<Leader>ri", function()
	biltin.live_grep({
		preview = true,
		theme = "default",
		layout_config = {
			height = 0.8,
			width = 0.8,
			prompt_position = "top",
		},
	})
end)
vim.api.nvim_set_hl(0, "TelescopeTitle", { bg = "#2d8bd2", fg = "#002b36" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = colors.darker_black, fg = colors.darker_black })
vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = colors.black2, fg = colors.black2 })
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = colors.darker_black })
vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = colors.black2, fg = colors.white })
browser.load_extension("file_browser")
