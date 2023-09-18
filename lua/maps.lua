-- Do not yank with x
vim.keymap.set("n", "x", '"_x')

-- Increment/decrement
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
vim.keymap.set("n", "dw", 'vb"_')
-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")
-- Move cursor
--vim.keymap.set({ "n", "i" }, "<A-j>", "ddp")
--vim.keymap.set({ "n", "i" }, "<A-k>", "ddkkp")

-- New tab
local opt = { silent = true }
vim.keymap.set("n", "te", ":tabedit<Return>", opt)
-- Split window
vim.keymap.set("n", "ss", ":split<Return><C-w>w", opt)
vim.keymap.set("n", "sv", ":vsplit<Return><C-w>w", opt)

-- Move window
vim.keymap.set("n", "<Space>", "<C-w>w", opt)
vim.keymap.set("", "<C-h>", "<C-w>h", opt)
vim.keymap.set("", "<C-k>", "<C-w>k", opt)
vim.keymap.set("", "<C-j>", "<C-w>j", opt)
vim.keymap.set("", "<C-l>", "<C-w>l", opt)
vim.keymap.set("", "<C-S>h", "<C-w><", opt)
vim.keymap.set("", "q:", "<nop>", opt)
vim.keymap.set("n", "<Esc>", "<Cmd>nohl<Return>", opt)
vim.keymap.set("", "<C-i>", "<C-^>", opt)

vim.keymap.set("", "q", "<nop>")
