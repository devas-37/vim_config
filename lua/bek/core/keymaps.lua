local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

map("n", "<leader>nh", ":nohl<CR>")
map("n", "<leader>+", "<C-a>")
map("n", "<leader>sv", "<C-w>v")
map("n", "<leader>sh", "<C-w>s")
map("n", "<leader>se", "<C-w>=")
map("n", "<leader>\\a", "<C-W>h", {})
map("n", "<leader>\\d", "<C-W>l", {})
map("n", "<leader>\\s", "<C-W>j", {})
map("n", "<leader>\\w", "<C-W>k", {})



map("n", "<leader>tt", ":tabnew<CR>")
map("n", "<leader>cc", ":tabclose<CR>")
map("n", "<leader>]]", ":tabn<CR>")
map("n", "<leader>[[", ":tabp<CR>")



-- maximizer keymaps
map("n", "<leader>sm", ":MaximizerToggle<CR>")
map("n", "<leader>bb", ":NvimTreeToggle<CR>")
map("n", "<leader>aa", ":NvimTreeFocus<CR>")
-- Telescope
map("n", "<leader>gg", ":LazyGit<Cr>")
map("n", "<Up>", "<Nop>", {})
map("n", "<Down>", "<Nop>", {})
map("n", "<Left>", "<Nop>", {})
map("n", "<Right>", "<Nop>", {})
