local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    TelescopeNormal         = { fg = c.fg, bg = c.bg_float },
    TelescopeBorder         = { fg = c.border, bg = c.bg_float },
    TelescopePromptNormal   = { fg = c.fg, bg = c.bg_float },
    TelescopePromptBorder   = { fg = c.border, bg = c.bg_float },
    TelescopePromptTitle    = { fg = c.yellow, bg = c.bg_float, bold = true },
    TelescopePromptPrefix   = { fg = c.blue_alt, bg = c.bg_float },
    TelescopePromptCounter  = { fg = c.green, bg = c.bg_float },
    TelescopeResultsNormal  = { fg = c.fg, bg = c.bg_float },
    TelescopeResultsBorder  = { fg = c.border, bg = c.bg_float },
    TelescopeResultsTitle   = { fg = c.yellow, bg = c.bg_float, bold = true },
    TelescopePreviewNormal  = { fg = c.fg, bg = c.bg_float },
    TelescopePreviewBorder  = { fg = c.border, bg = c.bg_float },
    TelescopePreviewTitle   = { fg = c.yellow, bg = c.bg_float, bold = true },
    TelescopePreviewLine    = { bg = c.bg_statusline },
    TelescopeSelection      = { fg = c.fg, bg = c.bg_statusline },
    TelescopeSelectionCaret = { fg = c.magenta, bg = c.bg_statusline },
    TelescopeMatching       = { fg = c.green, bold = true },
  }
end

return M
