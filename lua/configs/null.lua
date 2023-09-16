local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")
local h = require("null-ls.helpers")
local u = require("null-ls.utils")
local opts = {
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettierd,
	},
}

null_ls.setup(opts)
