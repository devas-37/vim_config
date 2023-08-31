local status, color = pcall(require, "colorizer")
if not status then
	return
end
color.setup({
	"css",
	"sass",
	"scss",
	"typescript",
	"typescriptreact",
	"javascript",
	"javascriptreact",
	"lua",
}, { mode = "background" })
