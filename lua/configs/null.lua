local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")
local opts = {
	sources = {
		null_ls.builtins.diagnostics.eslint_d,
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettierd,
	},
}

null_ls.setup(opts)
