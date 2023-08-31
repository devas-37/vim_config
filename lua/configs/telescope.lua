local status, browser = pcall(require, "telescope")
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
		preview = false,
		layout_strategy = "vertical",
		file_ignore_patters = { "node_modules/.*", ".git" },
		hidden = true,

		prompt_prefix = "   ",
		selection_caret = "  ",
		entry_prefix = "  ",
		layout_config = {
			horizontal = {
				prompt_position = "top",
				preview_width = 0.55,
				results_width = 0.8,
			},
			vertical = {
				mirror = false,
			},
			width = 0.87,
			height = 0.80,
			preview_cutoff = 120,
		},
		winblend = 0,
		border = {},
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
		color_devicons = true,
		set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
		mappings = {
			n = {
				["q"] = actions.close,
			},
		},
	},
	extensions = {
		file_browser = {
			theme = "dropdown",
			hijack_netrw = true,
			mappings = {
				["i"] = {
					["<C-w>"] = function()
						vim.cmd("normal vbd")
					end,
				},
				["n"] = {
					["f"] = fb_actions.create,
					["h"] = fb_actions.goto_parent_dir,
					["a"] = function()
						vim.cmd("startinsert")
					end,
				},
			},
		},
	},
})

vim.keymap.set("n", "<Leader>f", function()
	biltin.find_files({
		no_ignore = true,
		hidden = false,
	})
end)

vim.keymap.set("n", "<leader>e", function()
	browser.extensions.file_browser.file_browser({
		path = "%:p:h",
		cwd = telescope_buffer_dir(),
		respect_gitignore = false,
		hidden = false,
		grouped = true,
		previewer = false,
		initial_mode = "normal",
	})
end)

vim.keymap.set("n", "<Leader>r", function()
	biltin.live_grep()
end)

browser.load_extension("file_browser")
