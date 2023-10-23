local status, liveserver = pcall(require, "live_server")

if not status then
	print("Live server not loaded")
	return
end
print("Live server loaded")
liveserver.setup({})

vim.keymap.set("n", "<A-l>o", "<cmd>LiveServerStart<CR>")
vim.keymap.set("n", "<A-l>c", "<cmd>LiveServerStop<CR>")
