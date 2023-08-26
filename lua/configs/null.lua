local status, null_ls = pcall(require, "null-ls")
if not status then
	return
end

null_ls.setup({
	sources = {
		eslint_enable_diagnostics = true,
		eslint_opts = {
			condition = function(utils)
				return utils.root_has_file(".eslintrc.js") or utils.root_has_file(".eslintrc.json")
			end,
		},
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.completion.spell,
	},
})
