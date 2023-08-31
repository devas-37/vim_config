local status, terminal = pcall(require, "toggleterm")
if not status then
	return
end

terminal.setup({
	size = 20,
	open_mapping = [[<A-i>]],
	shade_terminals = true,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
	},
})

vim.cmd("autocmd! TermOpen term://*")
