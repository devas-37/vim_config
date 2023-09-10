local opt = vim.opt
vim.cmd("autocmd!")
vim.colorschema = "neosolarizeda"

vim.scriptencoding = "utf-8"

vim.wo.number = true
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
opt.scrolloff = 100
opt.number = true
opt.background = "dark"
opt.smartindent = true
opt.smarttab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.backup = false
opt.showcmd = true
--opt.shell = "fish"
opt.title = true
opt.hlsearch = true
opt.autoindent = true
opt.backupskip = "/.local/*"
opt.cmdheight = 1
opt.signcolumn = "yes"
opt.cursorline = true
opt.termguicolors = true
opt.winblend = 0
opt.pumblend = 5
vim.g.mapleader = " "
opt.inccommand = "split"
opt.ignorecase = true
opt.wrap = false
opt.backspace = "start,eol,indent"
opt.wildignore:append({ "*/node_modules/*" })
opt.clipboard = "unnamed"
opt.cmdheight = 0
opt.mouse = "a"
opt.smartcase = true
opt.updatetime = 250
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "set nopaste",
})
vim.g.transparency = false
opt.clipboard:append({ "unnamedplus" }) -- For ubuntu require xclip for X11, for Wayland wl-copy, wl-paste
