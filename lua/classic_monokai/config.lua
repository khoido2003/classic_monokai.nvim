local M = {}

M.version = "3206b571"

---@class monokai.Config
---@field style "dark"|"light" Style to use
---@field dark_style_background "default"|"dark"|"transparent" Background style for dark theme
---@field dark_style_plugins table<string, boolean> Plugin overrides for dark theme
---@field dark_style_default_plugins table<string, boolean> Plugin overrides for dark theme with default background
---@field dark_style_dark_plugins table<string, boolean> Plugin overrides for dark theme with dark background
---@field dark_style_transparent_plugins table<string, boolean> Plugin overrides for dark theme with transparent background
---@field light_style_background "default"|"dark"|"transparent" Background style for light theme
---@field light_style_plugins table<string, boolean> Plugin overrides for light theme
---@field light_style_default_plugins table<string, boolean> Plugin overrides for light theme with default background
---@field light_style_dark_plugins table<string, boolean> Plugin overrides for light theme with dark background
---@field light_style_transparent_plugins table<string, boolean> Plugin overrides for light theme with transparent background
---@field plugins table<string, boolean> Plugin overrides
---@field hl_styles table<string, table<string, boolean>> Highlight group styles
---@field dim_inactive boolean|number Dim inactive windows
---@field lualine_bold boolean Enable bold in lualine theme
---@field lualine_style "dark"|"light"|"default" Style to use for lualine
---@field markdown_header_marks boolean Enable markdown header marks
---@field terminal_colors boolean|table Enable terminal colors
---@field cache boolean Enable cache
---@field auto_enable_plugins boolean Enable plugins automatically
---@field color_headers boolean Enable color headers
---@field on_highlights fun(hl:monokai.Highlights, c:ColorScheme) Function to override highlight groups

M.defaults = {
	style = vim.o.background,
	dark_style_background = "default",
	dark_style_plugins = {},
	dark_style_default_plugins = {},
	dark_style_dark_plugins = {},
	dark_style_transparent_plugins = {},
	light_style_background = "default",
	light_style_plugins = {},
	light_style_default_plugins = {},
	light_style_dark_plugins = {},
	light_style_transparent_plugins = {},
	plugins = { all = true },
	hl_styles = {
		comments = { italic = true },
		keywords = { italic = false },
		functions = { italic = false },
		variables = { italic = false },
		floats = "default",
		sidebars = "default",
	},
	dim_inactive = false,
	lualine_bold = true,
	lualine_style = "default",
	markdown_header_marks = false,
	terminal_colors = false,
	cache = false,
	auto_enable_plugins = true,
	color_headers = true,
	on_highlights = function(hl, c) end,
}

-- kfkf
---@param opts? monokai.Config|monokai.UserConfig
function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", M.defaults, opts or {})
end

---@param opts? monokai.Config|monokai.UserConfig
function M.extend(opts)
	return vim.tbl_deep_extend("force", M.options or M.defaults, opts or {})
end

return M
