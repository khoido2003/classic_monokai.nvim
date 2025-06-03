---@class Palette
local M = {
  blue = "#268bd2",         -- Brighter, readable blue
  green = "#2aa198",        -- Teal-ish green (Solarized-style)
  magenta = "#d33682",      -- Vivid magenta
  orange = "#cb4b16",       -- Deep orange for visibility
  purple = "#6c71c4",       -- Soft but visible purple
  yellow = "#b58900",       -- Dark mustard yellow

  charcoal = "#eaeaea",     -- Slightly lighter than before for contrast
  charcoal_light = "#dddddd",
  charcoal_medium = "#d0d0d0",
  grey = "#857b6f",         -- Warmer grey for comments and secondary text
  grey_dark = "#6c6c6c",
  grey_darker = "#5a5a5a",
  grey_darker_alt = "#4e4e4e",
  grey_light = "#b8b8b8",
  grey_lighter = "#f4f4f4",
  grey_medium = "#9a958f",

  black = "#000000",
  white = "#ffffff",

  bg = "#f9f9f4",           -- Softer, brighter background
  bg_dark = "#f0f0e8",
  bg_darker = "#e7e7df",

  comment = "#998f84",      -- Classic Monokai comment brown
  fg = "#2a2a2a",           -- Much darker foreground for contrast
  fg_dark = "#1c1c1c",
  fg_gutter = "#c0c0c0",
  terminal_black = "#a9a9a9",

  delimiter_orange = "#ff7733",
  delimiter_yellow = "#e0b000",
  delimiter_green = "#33aa77",
  delimiter_cyan = "#00aaaa",
  delimiter_purple = "#9b59b6",
  delimiter_pink = "#f75ca8",
  delimiter_blue = "#3399ff",

  blue_alt = "#4ec9df",
  green_alt = "#3aa676",
  green_light = "#8ec07c",
  red = "#f92672",
  yellow_alt = "#e6db74",
  git = {
    add = "#719e07",
    change = "#b58900",
    delete = "#dc322f",
  },
}

return M
