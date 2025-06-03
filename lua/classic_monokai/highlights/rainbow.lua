local M = {}

M.url = "https://github.com/HiPhish/rainbow-delimiters.nvim"

---@type monokai.HighlightsFn
function M.get(c)
  return {
    RainbowDelimiterRed = { fg = c.delimiter_pink },
    RainbowDelimiterOrange = { fg = c.delimiter_orange },
    RainbowDelimiterYellow = { fg = c.delimiter_yellow },
    RainbowDelimiterGreen = { fg = c.delimiter_green },
    RainbowDelimiterBlue = { fg = c.delimiter_blue },
    RainbowDelimiterViolet = { fg = c.delimiter_purple },
    RainbowDelimiterCyan = { fg = c.delimiter_cyan },
  }
end

return M
