local status, prettier = pcall(require, "prettier")
if (not status) then return end

prettier.setup {
  ["null-ls"] = {
    condition = function()
      return prettier.config_exists({
        check_package_json = true
      })
    end,
    runtime_condition = function()
      return true
    end,
    timeout = 5000
  },
  bin = 'prettierd',

  filetypes = {
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less",
    "lua"
  }
}
