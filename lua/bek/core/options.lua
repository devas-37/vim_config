local opt = vim.opt
-- line numbers
opt.relativenumber = false
opt.number = true

-- tabs & indents
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

--line wrapping
opt.wrap = false


-- search settings
opt.ignorecase = true
opt.smartcase = true

-- curor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"


-- clipboard
opt.clipboard:append("unnamedplus")


-- split window
opt.splitright = true
opt.splitbelow = true
opt.iskeyword:append("-")
vim.keymap.set("n", "<A-Down>", ":m+<CR>", {})
vim.keymap.set("n", "<A-Up>", ":m-2<CR>", {})
vim.keymap.set("n", "<A-j>", ":m-2<CR>", {})
vim.keymap.set("n", "<A-k>", ":m+<CR>", {})
-- vim.keymap.set("n", "<Down>", "<Nop>", {})
-- vim.keymap.set("n", "<Up>", "<Nop>", {})
-- vim.keymap.set("n", "<Left>", "<Nop>", {})
-- vim.keymap.set("n", "<Right>", "<Nop>", {})
