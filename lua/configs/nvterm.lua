local status, term = pcall(require, "nvterm")
if (not status) then return end


term.setup()


vim.keymap.set({ "n", "t" }, "<A-i>", function() require("nvterm.terminal").new("float") end,
  { noremap = true, silent = true })
