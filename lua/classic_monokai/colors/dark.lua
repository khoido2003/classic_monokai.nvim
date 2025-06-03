---@class Palette
local M = {
  blue = "#66d9ef", -- terminal.ansiBrightCyan
  green = "#a6e22e", -- tokenColors entity.name.class
  magenta = "#f92672", -- terminal.ansiBrightRed
  orange = "#fd971f", -- tokenColors variable.parameter
  purple = "#ae81ff", -- tokenColors constant.numeric
  yellow = "#e6db74", -- tokenColors string

  charcoal = "#272822", -- editor.background
  charcoal_light = "#414339", -- dropdown.background
  charcoal_medium = "#353630", -- Lighter than charcoal, more distinct
  grey = "#75715e", -- list.activeSelectionBackground
  grey_dark = "#464741", -- editorWhitespace.foreground
  grey_darker = "#32332e", -- Darker, more contrast with charcoal_light
  grey_darker_alt = "#2f302b", -- Distinct shade from grey_darker
  grey_light = "#ccccc7", -- tab.inactiveForeground
  grey_lighter = "#e3e3dd", -- terminal.ansiWhite
  grey_medium = "#88846f", -- tokenColors comment

  black = "#333333", -- terminal.ansiBlack
  white = "#f8f8f2", -- editor.foreground

  bg = "#272822", -- editor.background
  bg_dark = "#22231e", -- just a bit darker
  bg_darker = "#1e1f1a",
  comment = "#88846f", -- tokenColors comment
  fg = "#f8f8f2", -- editor.foreground
  fg_dark = "#ccccc7", -- tab.inactiveForeground
  fg_gutter = "#90908a", -- editorLineNumber.foreground
  terminal_black = "#333333", -- terminal.ansiBlack

  delimiter_orange = "#ff9f43",
  delimiter_yellow = "#f0d264",
  delimiter_green = "#99cc66",
  delimiter_cyan = "#66cccc",
  delimiter_purple = "#b294bb",
  delimiter_pink = "#f858a2",
  delimiter_blue = "#99ccff",

  -- Extra colors
  blue_alt = "#4ec9df", -- terminal.ansiBrightBlue
  green_alt = "#a6e22e", -- tokenColors entity.name.class (same as green)
  green_light = "#a6e22e", -- tokenColors entity.name.class (same as green)
  red = "#f92672", -- terminal.ansiBrightRed
  yellow_alt = "#e2e22e", -- terminal.ansiBrightYellow
  git = {
    add = "#a6e22e", -- tokenColors markup.inserted
    change = "#e6db74", -- tokenColors markup.changed
    delete = "#f92672", -- tokenColors markup.deleted
  },
}

return M
