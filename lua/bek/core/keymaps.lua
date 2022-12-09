local builtin = require("telescope.builtin")
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

map("i", "jk", "<ESC>")
map("n", "<leader>nh", ":nohl<CR>")
map("n", "<leader>+", "<C-a>")
map("n", "<leader>sv", "<C-w>v")
map("n", "<leader>sh", "<C-w>s")
map("n", "<leader>se", "<C-w>=")
map("n", "<leader>sx", ":close<CR>")



map("n", "<leader>tt", ":tabnew<CR>")
map("n", "<leader>cc", ":tabclose<CR>")
map("n", "<leader>]]", ":tabn<CR>")
map("n", "<leader>[[", ":tabp<CR>")



-- maximizer keymaps
map("n", "<leader>sm", ":MaximizerToggle<CR>")
map("n", "<leader>bb", ":NvimTreeToggle<CR>")
map("n", "<leader>aa", ":NvimTreeFocus<CR>")
-- Telescope
--map('n', '<leader>ft', builtin.find_files, {})
map("n", "<leader>fg", builtin.live_grep, {})
map("n", "<leader>fb", builtin.buffers, {})
map("n", "<leader>fh", builtin.help_tags, {})
map("n", "<leader>gg", ":LazyGit<Cr>")
