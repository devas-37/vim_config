local status, git = pcall(require, 'git')

if not status then return end
require('gitsigns').setup {}
git.setup {
  keymaps = {
    blame = '<leader>gb',
    browse = '<leader>go'
  }
}
