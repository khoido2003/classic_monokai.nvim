# Configuration Examples

Here are some common configuration examples for classic-monokai.nvim.

## Basic Setup

```lua
require("classic_monokai").setup()
vim.cmd.colorscheme("classic-monokai")
```

## Dark Theme with Transparent Background

```lua
require("classic_monokai").setup({
  style = "dark",
  dark_style_background = "transparent",
  hl_styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = { italic = false },
  }
})
vim.cmd.colorscheme("classic-monokai")
```

## Light Theme for Daytime Coding

```lua
require("classic_monokai").setup({
  style = "light",
  hl_styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = { italic = false },
  }
})
vim.cmd.colorscheme("classic-monokai")
```

## With Lualine Integration

```lua
-- In your lazy.nvim config:
{
  "khoido2003/classic_monokai.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("classic_monokai").setup({
      -- your config here
    })
    vim.cmd.colorscheme("classic-monokai")
  end
},
{
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = "classic-monokai" -- use classic-monokai theme
    }
  }
}
```

## Full Configuration with All Options

```lua
require("classic_monokai").setup({
  -- Theme style ("dark" or "light")
  style = "dark",
  
  -- Background style ("default" or "transparent")
  dark_style_background = "default",
  
  -- Highlighting style options
  hl_styles = {
    -- Enable/disable italic for comments
    comments = { italic = true },
    -- Enable/disable italic for keywords
    keywords = { italic = true },
    -- Enable/disable italic for functions
    functions = { italic = false },
    -- Enable/disable italic for variables
    variables = { italic = false },
  },
  
  -- Enable plugin integrations by default
  auto_enable_plugins = true,
  
  -- Enable rainbow headers in markdown files
  color_headers = true,
  
  -- Dim inactive windows
  dim_inactive = false,
  
  -- Use bold font in lualine
  lualine_bold = true,
  
  -- Set terminal colors
  terminal_colors = true,
})
``` 