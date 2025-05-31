local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type monokai.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    TelescopeBorder         = { fg = c.charcoal_light or c.grey_dark, bg = c.bg_float or c.bg_dark or c.bg },
    TelescopeNormal         = { fg = c.fg, bg = c.bg_float or c.bg_dark or c.bg },
    TelescopePromptBorder   = { fg = c.orange, bg = c.bg_float or c.bg_dark or c.bg },
    TelescopePromptTitle    = { fg = c.orange, bg = c.bg_float or c.bg_dark or c.bg },
    TelescopeResultsComment = { fg = c.grey_medium or c.comment },
  }
end

return M