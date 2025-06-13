local utils = require("classic_monokai.utils")

local M = {}

M.url = "https://github.com/khoido2003/classic_monokai.nvim"

---@type monokai.HighlightsFn
function M.get(c, opts)
	-- Helper function to apply styles
	local function apply_style(hl, style_opts)
		if not style_opts then
			return hl
		end
		if style_opts.italic then
			hl.italic = true
		end
		if style_opts.bold then
			hl.bold = true
		end
		if style_opts.underline then
			hl.underline = true
		end
		return hl
	end

	local ret = {
		Name1 = { fg = c.color, bg = c.color },
		Name2 = apply_style({ fg = utils.darken(c.color, 0.5) }, opts.hl_styles.comments),
	}

	for i, color in ipairs(c.rainbow) do
		ret["Highlight" .. i] = { fg = color, bg = c.rainbow_bg[i] }
	end

	return ret
end

return M
