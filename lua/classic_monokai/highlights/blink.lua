local utils = require("classic_monokai.utils")

local M = {}

M.url = "https://github.com/saghen/blink.cmp"

---@type monokai.HighlightsFn
function M.get(c)
	local ret = {
		BlinkCmpKind = { fg = c.fg, bg = c.none }, -- Kind icon/text, aligned with CmpItemAbbr
		BlinkCmpLabel = { fg = c.grey_lighter, bg = c.none }, -- Main text, matched to CmpItemAbbr
		BlinkCmpLabelDeprecated = { fg = c.grey_lighter, bg = c.none, strikethrough = true }, -- Deprecated label, matched to CmpItemAbbrDeprecated
		BlinkCmpLabelMatch = { fg = c.fg, bg = c.none }, -- Partial text matching, matched to CmpItemAbbrMatch
		BlinkCmpMenu = { fg = c.comment, bg = c.bg_popup }, -- Menu background, matched to CmpDocumentation
		BlinkCmpMenuBorder = { fg = c.border_highlight, bg = c.bg_float }, -- Menu border, matched to CmpDocumentationBorder
		BlinkCmpMenuSelection = { fg = c.completion_text, bg = c.bg_menusel }, -- Selected item, matched to PmenuSel
		BlinkCmpLabelDetail = { fg = c.comment, bg = c.none, italic = true }, -- Label detail, matched to CmpItemMenu
		BlinkCmpLabelDescription = "BlinkCmpLabelDetail", -- Link to BlinkCmpLabelDetail, unchanged
		BlinkCmpSource = { fg = c.comment, bg = c.none }, -- Source, matched to CmpItemMenu
		BlinkCmpGhostText = { fg = c.grey_lighter, bg = c.none, italic = true }, -- Ghost text, matched to CmpGhostText
	}
	-- Generate kind highlights, unchanged as it matches nvim-cmp's approach
	utils.generate_kinds(ret, "BlinkCmpKind%s")
	return ret
end

return M
