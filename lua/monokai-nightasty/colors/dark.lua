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
  charcoal_medium = "#2e2f2a", -- Slightly lighter than charcoal, derived from #272822
  grey = "#75715e", -- list.activeSelectionBackground
  grey_dark = "#464741", -- editorWhitespace.foreground
  grey_darker = "#3b3c35", -- Darker variant of dropdown.background
  grey_darker_alt = "#383931", -- Slightly different shade from grey_darker
  grey_light = "#ccccc7", -- tab.inactiveForeground
  grey_lighter = "#e3e3dd", -- terminal.ansiWhite
  grey_medium = "#88846f", -- tokenColors comment

  black = "#333333", -- terminal.ansiBlack
  white = "#f8f8f2", -- editor.foreground

  bg = "#272822", -- editor.background
  bg_dark = "#1e1f1c", -- editorGroupHeader.tabsBackground
  bg_darker = "#181916", -- Darker variant of bg_dark
  comment = "#88846f", -- tokenColors comment
  fg = "#f8f8f2", -- editor.foreground
  fg_dark = "#ccccc7", -- tab.inactiveForeground
  fg_gutter = "#90908a", -- editorLineNumber.foreground
  terminal_black = "#333333", -- terminal.ansiBlack

  -- Extra colors
  blue_alt = "#819aff", -- terminal.ansiBrightBlue
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
