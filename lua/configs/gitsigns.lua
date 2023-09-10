local status, git = pcall("gitsigns")
if not status then
	return
end

git.setup({})
