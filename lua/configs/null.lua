local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")
local h = require("null-ls.helpers")
local u = require("null-ls.utils")
local opts = {
	sources = {
		-- null_ls.builtins.diagnostics.eslint_d.with({
		-- 	cwd = h.cache.by_bufnr(function(params)
		-- 		return u.root_pattern(
		-- 			".eslintrc",
		-- 			".eslintrc.js",
		-- 			".eslintrc.cjs",
		-- 			".eslintrc.yaml",
		-- 			".eslintrc.yml",
		-- 			".eslintrc.json"
		-- 		)(params.bufname)
		-- 	end),
		-- }),
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettierd,
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({
				group = augroup,
				buffer = bufnr,
			})
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
}

null_ls.setup(opts)
