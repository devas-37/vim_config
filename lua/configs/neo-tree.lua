local status, tree = pcall(require, "neo-tree")
if not status then
	return
end
tree.setup({
	close_if_last_window = true,
	file_system = {
		follow_current_file = {
			enabled = true,
			leave_dirs_open = false,
		},
	},
	statusline = false,
	hide_root_node = true,
	default_component_configs = {
		git_status = {
			symbols = {
				added = "✚",
				modified = "",
				deleted = "✖",
				renamed = "󰁕",
				untracked = "",
				ignored = "",
				unstaged = "󰄱",
				staged = "",
				conflict = "",
			},
		},
	},
})
local colors = require("theme").base_30
local base = require("theme").base_16
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = colors.darker_black, fg = colors.darker_black })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = colors.darker_black, fg = colors.darker_black })
vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = colors.one_bg3 })
vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = colors.rolling_stone })
vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { bg = colors.pink, fg = base.white })
vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { bg = colors.pink, fg = colors.grey })
vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = colors.lochmara, italic = false })
vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { fg = colors.spring_green, italic = false })
vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = colors.spring_green })
vim.api.nvim_set_hl(0, "NeoTreeDimText", { fg = colors.one_bg })
vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = colors.lightbg })

vim.keymap.set("n", "<Leader>e", function()
	vim.cmd("Neotree toggle")
end)
