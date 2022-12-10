local setup, nvimtree = pcall(require, "nvim-tree")

if not setup then
  return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimtree.setup({
  hijack_netrw = false,
  view = {
    adaptive_size = true,
    centralize_selection = true,

    float = {
      enable = true,
      quit_on_focus_loss = true,
      open_win_config = {
        relative = "editor",
        border = "rounded",
        width = 60,
        height = 30,
        row = 2,
        col = 2,
      },
    },
  },
  filters = {
    dotfiles = true
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
    indent_markers = {
      enable = false,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        bottom = "─",
        none = " ",
      },
    },
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "",
          arrow_open = ""
        }
      }
    }
  },
})
vim.cmd [[
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]]
