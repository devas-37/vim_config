local status, lualine = pcall(require,"lualine")

if  not status then
  return 
end

lualine.setup{
  options={
  icons_enabled=true,
  theme="solarized_dark",
  component_separators = { left = '', right = '' },
  section_separators = { left = '', right = '' },
  disabled_filetypes={}
  },
  sections={
    lualine_a={'mode'},
    lualine_b = {'branch'},
    lualine_c = {{
      'filename',
      file_status=true,
      path=0
    }},
    lualine_x={
      {"diagnostics", source = {"nvim_diagnostic"},symbols = {
        modified = ' ●',      -- Text to show when the buffer is modified
        alternate_file = '#', -- Text to show to identify the alternate file
        directory =  '',     -- Text to show when the buffer is a directory
      }}
    }
  }
}
