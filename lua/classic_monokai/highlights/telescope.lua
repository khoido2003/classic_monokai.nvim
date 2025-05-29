local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    TelescopeBorder = "FloatBorder",
    TelescopeNormal = { fg = c.grey_light, bg = c.bg_float },
    TelescopePreviewLine = { bg = c.bg_statusline },
    TelescopePromptPrefix = { fg = c.blue_alt },
    TelescopeSelection = { fg = c.fg, bg = c.bg_statusline },
    TelescopeSelectionCaret = { fg = c.magenta, bg = c.bg_statusline },
    TelescopePromptCounter = { fg = c.green, bg = c.bg_statusline },
    TelescopeMatching = { fg = c.green, bold = true },
  }
end

return M
