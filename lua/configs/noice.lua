local status, noice = pcall(require, "noice")
local colors = require("theme").base_30
if not status then
	return
end

noice.setup({
	lsp = {
		-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
	},
	cmdline = {
		format = {
			cmdline = { pattern = "^:", icon = "", lang = "vim" },
		},
	},
	presets = {
		bottom_search = false, -- use a classic bottom cmdline for search
		command_palette = true, -- position the cmdline and popupmenu together
		long_message_to_split = true, -- long messages will be sent to a split
		inc_rename = false, -- enables an input dialog for inc-rename.nvim
		lsp_doc_border = false, -- add a border to hover docs and signature help
	},
})

vim.api.nvim_set_hl(0, "NoiceMini", { bg = colors.black, fg = colors.white })
vim.api.nvim_set_hl(0, "NoiceScrollbar", { bg = colors.pink, fg = colors.white })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupTitle", { fg = colors.nord_blue })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = colors.darker_black })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { bg = colors.darker_black, fg = colors.white })
