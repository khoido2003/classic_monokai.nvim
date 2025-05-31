---@class Palette
local M = {
  -- Main syntax colors
  blue = "#4499bf",      -- Types
  green = "#7da900",     -- Functions
  magenta = "#f92672",   -- Keywords
  orange = "#f37b3f",    -- Parameters
  purple = "#9d65ff",    -- Constants
  yellow = "#c49619",    -- Strings

  -- UI colors (keeping most of these the same since they work well)
  charcoal = "#e3e3e3",
  charcoal_light = "#d8d8d8",
  charcoal_medium = "#dedede",
  grey = "#7f7f7f",
  grey_dark = "#b2b2b2",
  grey_darker = "#bfbfbf",
  grey_darker_alt = "#c9c9c9",
  grey_light = "#4c4c4c",
  grey_lighter = "#171717",
  grey_medium = "#a5a5a5",

  black = "#000001",
  white = "#ffffff",

  bg = "#ffffff",
  bg_dark = "#f3f3f3", -- derived from bg, slightly darker for subtle contrast
  bg_darker = "#e9e9e9", -- derived from bg, even darker but still light for readability
  comment = "#7f7f7f",
  fg = "#333333",
  fg_dark = "#0e0e0e",
  fg_gutter = "#c9c9c9",
  terminal_black = "#bfbfbf",

  -- Extra colors
  blue_alt = "#4499bf",    -- Updated to match main blue
  green_alt = "#7da900",   -- Updated to match main green
  green_light = "#8fb800", -- Slightly lighter version of main green
  red = "#f92672",        -- Using magenta as error color for consistency
  yellow_alt = "#c49619",  -- Using main yellow
  git = {
    add = "#7da900",       -- Using main green
    change = "#f37b3f",    -- Using main orange
    delete = "#f92672",    -- Using main magenta
  },
}

return M
