-- Group.new("DiagnosticVirtualTextError", groups.Error.fg, groups.Error.fg:dark():dark():dark():dark(), styles.NONE)
-- -- Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
-- -- Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
-- -- Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
-- -- Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
-- -- Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)
-- -- Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
-- -- Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)

local Color, colors, Group, groups, styles = require('colorbuddy').setup()
Color.new('Warning', '#FCCB00')
Color.new('Error', '#DB3E00')
Color.new('Info', '#4673FF')
Color.new('Hint', '#5CB85C')

Group.new('Function', colors.yellow, colors.background, styles.bold)
Group.new('luaFunctionCall', groups.Function, groups.Function, groups.Function)

Group.new('DiagnosticVirtualTextError', colors.Error:light(), colors.Error, styles.bold)
