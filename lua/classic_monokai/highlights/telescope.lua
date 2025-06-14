local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type monokai.HighlightsFn
function M.get(c)
	return {
		TelescopeBorder = "FloatBorder",
		TelescopeNormal = { fg = c.grey_light, bg = c.bg_float },
		TelescopePreviewLine = { bg = c.bg_statusline },
		TelescopePromptPrefix = { fg = c.yellow },
		TelescopeSelection = { fg = c.fg, bg = c.bg_highlight_sidebar },
		TelescopeSelectionCaret = { fg = c.yellow, bg = c.bg_statusline },
		TelescopePromptCounter = { fg = c.grey_light, bg = c.bg_float, bold = true },
		TelescopeMatching = { fg = c.yellow },
	}
end

return M
