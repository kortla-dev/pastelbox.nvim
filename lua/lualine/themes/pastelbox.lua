local scheme = require("scheme")

local colors = scheme.palette
local display = scheme.display

return {
  normal = {
    a = { gui = display.bld, fg = colors.gray0, bg = colors.gray },
    b = { fg = colors.peach, bg = colors.gray3 },
    c = { fg = colors.gray, bg = colors.gray2 },
  },
  insert = {
    a = { gui = display.bld, fg = colors.gray0, bg = colors.blue },
    b = { fg = colors.peach, bg = colors.gray3 },
    c = { fg = colors.gray, bg = colors.gray2 },
  },
  visual = {
    a = { gui = display.bld, fg = colors.gray0, bg = colors.orange },
    b = { fg = colors.peach, bg = colors.gray3 },
    c = { fg = colors.gray, bg = colors.gray2 },
  },
  command = {
    a = { gui = display.bld, fg = colors.gray0, bg = colors.green },
    b = { fg = colors.peach, bg = colors.gray3 },
    c = { fg = colors.gray, bg = colors.gray2 },
  },
}
