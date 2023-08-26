local status, saga = pcall(require, "lspsaga")
if not status then
	return
end

saga.setup({
	server_filetype_map = {
		typescript = "typescript",
		rust = "rust",
	},
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "<Leader>h", "<Cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "<F12>", "<Cmd>Lspsaga goto_definition<CR>", opts)
vim.keymap.set("i", "<C-k>", "<Cmd>Lspsaga finder<CR>", opts)
vim.keymap.set("n", "<Leader>p", "<Cmd>Lspsaga peek_definition<CR>", opts)
vim.keymap.set("n", "<Leader>rr", "<Cmd>Lspsaga rename<CR>", opts)
