local utils = require("classic_monokai.utils")

local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type monokai.HighlightsFn
function M.get(c)
  local ret = {
    CmpDocumentation = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_float },
    CmpGhostText = { fg = c.grey_medium, bg = c.none, italic = true }, -- Experimental. hl must be defined by the user

    CmpItemAbbr = { fg = c.grey_lighter, bg = c.none }, -- The suggestions
    CmpItemAbbrDeprecated = { fg = c.grey_lighter, bg = c.none, strikethrough = true }, -- Deprecated suggestions
    CmpItemAbbrMatch = { fg = c.fg
    , bg = c.none, bold = true }, -- The current matches with the suggestions
    CmpItemAbbrMatchFuzzy = { fg = c.fg, bg = c.none, bold= true }, -- Matches ahead current
    CmpItemMenu = { fg = c.comment, bg = c.none }, -- The [source of the suggestion, LSP, luasnip...]
  }
  utils.generate_kinds(ret, "CmpItemKind%s")
  return ret
end

return M
