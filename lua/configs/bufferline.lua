local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end
local colors = require("theme").base_30
bufferline.setup({
	options = {
		mode = "tabs",
		separator_style = "thick",
		always_show_bufferline = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		max_prefix_length = 0,
		color_icons = true,
	},
	highlights = {
		separator = {
			fg = "#073642",
			bg = "#002b36",
		},
		separator_selected = {
			fg = "#073642",
		},
		background = {
			fg = "#657b83",
			bg = "#002b36",
		},
		buffer_selected = {
			fg = "#fdf6e3",
			italic = false,
		},
		fill = {
			bg = "#073642",
		},
		modified = {
			fg = colors.lightbg,
			bg = "#002b36",
		},
		modified_visible = {
			fg = colors.lightbg,
		},
		modified_selected = {
			fg = colors.lochmara,
		},
	},
})

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
