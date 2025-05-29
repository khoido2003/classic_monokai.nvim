local M = {}

function M.get()
  local opts = require("classic_monokai.config").extend()
  opts.style = opts.lualine_style == "default" and vim.o.background or opts.lualine_style
  local c = require("classic_monokai.colors").setup(opts)

  local classic_monokai = {}

  if opts.style == "dark" then
    classic_monokai.normal = {
      a = { fg = c.lualine.normal_fg, bg = c.lualine.normal_bg },
      b = { fg = c.green, bg = c.bg_status_alt },
      c = { fg = c.fg_statusline, bg = c.bg_statusline },
    }

    classic_monokai.insert = {
      a = { fg = c.black, bg = c.yellow_alt },
      b = { fg = c.yellow_alt, bg = c.bg_status_alt },
    }

    classic_monokai.command = {
      a = { fg = c.green, bg = c.black },
      b = { fg = c.green, bg = c.bg_status_alt },
    }

    classic_monokai.visual = {
      a = { fg = c.black, bg = c.purple },
      b = { fg = c.fg, bg = c.bg_status_alt },
    }

    classic_monokai.replace = {
      a = { fg = c.black, bg = c.red },
      b = { fg = c.red, bg = c.bg_status_alt },
    }

    classic_monokai.terminal = {
      a = { fg = c.green, bg = c.black },
      b = { fg = c.green, bg = c.bg_status_alt },
    }

    classic_monokai.inactive = {
      a = { fg = c.blue, bg = c.bg_dark },
      b = { fg = c.fg_gutter, bg = c.bg_dark, gui = "bold" },
      c = { fg = c.grey, bg = c.bg_dark },
    }
  else
    classic_monokai.normal = {
      a = { fg = c.lualine.normal_fg, bg = c.lualine.normal_bg },
      b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
      c = { fg = c.fg_statusline, bg = c.bg_statusline },
    }

    classic_monokai.insert = {
      a = { fg = c.black, bg = c.yellow_alt },
      b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
    }

    classic_monokai.command = {
      a = { fg = c.lualine.command_fg, bg = c.black },
      b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
    }

    classic_monokai.visual = {
      a = { fg = c.white, bg = c.purple },
      b = { fg = c.purple, bg = c.bg_status_alt },
    }

    classic_monokai.replace = {
      a = { fg = c.white, bg = c.red },
      b = { fg = c.red, bg = c.bg_status_alt },
    }

    classic_monokai.terminal = {
      a = { fg = c.lualine.command_fg, bg = c.black },
      b = { fg = c.fg_sidebar, bg = c.bg_status_alt },
    }

    classic_monokai.inactive = {
      a = { fg = c.blue, bg = c.bg_status_alt },
      b = { fg = c.fg_gutter, bg = c.bg_status_alt, gui = "bold" },
      c = { fg = c.grey, bg = c.bg_status_alt },
    }
  end

  if opts.lualine_bold then
    for _, mode in pairs(classic_monokai) do
      mode.a.gui = "bold"
    end
  end

  return classic_monokai
end

return M.get() 