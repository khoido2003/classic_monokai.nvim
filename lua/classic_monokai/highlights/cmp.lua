local utils = require("classic_monokai.utils")

local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type monokai.HighlightsFn
function M.get(c)
  local ret = {
    CmpDocumentation = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_float },
    CmpGhostText = { fg = c.grey_medium, bg = c.none, italic = true }, -- Experimental. hl must be defined by the user

    CmpItemAbbr = { fg = c.fg, bg = c.none }, -- The suggestions
    CmpItemAbbrDeprecated = { fg = c.white, bg = c.none, strikethrough = true }, -- Deprecated suggestions
    CmpItemAbbrMatch = { fg = c.white, bg = c.none }, -- The current matches with the suggestions
    CmpItemAbbrMatchFuzzy = { fg = c.white, bg = c.none }, -- Matches ahead current
    CmpItemMenu = { fg = c.comment, bg = c.none }, -- The [source of the suggestion, LSP, luasnip...]
    CmpItemKind = { fg = c.white, bg = c.grey_medium },
  }
  utils.generate_kinds(ret, "CmpItemKind%s")
  return ret
end

return M
