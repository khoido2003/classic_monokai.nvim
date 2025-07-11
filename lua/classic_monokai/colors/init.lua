local utils = require("classic_monokai.utils")

local M = {}

---@param opts monokai.Config|{style:string}
function M.setup(opts)
	local is_light = opts.style == "light"
	local bg_cfg = is_light and opts.light_style_background or opts.dark_style_background

	---@class ColorScheme: Palette
	local colors = utils.mod("classic_monokai.colors." .. opts.style)

	colors.none = "NONE"

	colors.bg = (bg_cfg == "dark" or bg_cfg == "transparent") and colors.bg_dark
		or string.sub(bg_cfg, 1, 1) == "#" and bg_cfg
		or colors.bg
	colors.bg_dark = colors.bg == colors.bg_dark and colors.bg_darker or colors.bg_dark

	-- Default values for functions util.darken() and util.lighter()
	utils.bg = colors.bg
	utils.fg = colors.fg

	colors.border = colors.blue
	colors.border_highlight = colors.fg

	-- Statusline
	colors.bg_statusline = is_light and utils.darken(colors.bg, 0.93, colors.fg)
		or utils.darken(colors.bg, 0.94, colors.fg)
	colors.bg_status_alt = is_light and colors.charcoal_medium or colors.charcoal_light
	colors.fg_statusline = colors.fg_dark

	-- Sidebar and Floats
	colors.bg_sidebar = opts.hl_styles.sidebars == "transparent" and colors.none
		or opts.hl_styles.sidebars == "dark" and colors.bg_darker
		or is_light and colors.bg_statusline
		or colors.charcoal
	colors.bg_float = opts.hl_styles.floats == "transparent" and colors.none
		or (opts.hl_styles.floats == "dark" and is_light) and colors.charcoal_dark
		or opts.hl_styles.floats == "dark" and colors.bg_dark
		or colors.charcoal
	colors.fg_float = colors.fg

	-- Set the background for the current line (current cursor position)
	colors.bg_highlight = is_light and utils.darken(colors.bg, 0.95, colors.fg)
		or utils.darken(colors.bg, 0.94, colors.fg)
	-- file tree current line
	colors.bg_highlight_sidebar = is_light and utils.darken(colors.bg, 0.8, colors.fg)
		or utils.darken(colors.bg, 0.9, colors.fg)

	colors.bg_columns = opts.transparent and colors.bg or utils.lighten(colors.bg, 0.98, colors.fg)
	colors.bg_visual = is_light and colors.charcoal_medium or colors.grey_darker
	colors.bg_search = colors.yellow
	colors.fg_search = is_light and colors.white or colors.black
	colors.fg_sidebar = colors.fg_dark

	-- Popups
	colors.bg_popup = is_light and colors.charcoal or colors.charcoal_light
	colors.bg_menuselbar = utils.lighten(colors.bg_popup, 0.95)
	colors.bg_menusel = colors.select_popup
	colors.completion_text = is_light and colors.magenta or colors.yellow

	-- For lsp floats messages, git, diffs, etc.
	colors.error = colors.red
	colors.hint = colors.green_alt
	colors.info = colors.blue_alt
	colors.note = utils.blend(colors.orange, colors.yellow, 0.6)
	colors.todo = colors.purple
	colors.warning = colors.orange
	colors.diff = {
		add = utils.darken(colors.green, 0.15),
		delete = utils.darken(colors.red, 0.15),
		change = utils.darken(colors.blue_alt, 0.15),
		text = utils.darken(colors.blue_alt, 0.3),
	}

	-- Lualine
	colors.lualine = {
		normal_bg = is_light and colors.green_light or colors.green,
		normal_fg = is_light and colors.white or colors.black,
		command_fg = is_light and utils.import_color("dark", "green") or colors.green,
	}

	-- Rainbow colors (for color_headers, rainbow delimiters and other plugins)
	colors.rainbow = {
		colors.delimiter_pink, -- First level (Red)
		colors.delimiter_orange, -- Second level (Orange)
		colors.delimiter_yellow, -- Third level (Yellow)
		colors.delimiter_green, -- Fourth level (Green)
		colors.delimiter_blue, -- Fifth level (Blue)
		colors.delimiter_purple, -- Sixth level (Violet)
		colors.delimiter_cyan, -- Seventh level (Cyan)
	}

	colors.rainbow_bg = {}
	for i = 1, #colors.rainbow do
		colors.rainbow_bg[i] = utils.darken(colors.rainbow[i], 0.07)
	end

	-- Apply user config overrides
	if opts.on_colors then
		opts.on_colors(colors)
	end

	return colors, opts
end

return M
