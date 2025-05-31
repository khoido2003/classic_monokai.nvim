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

## Disable All Italics and Bold Styles

```lua
return {
  "khoido2003/classic_monokai.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("classic_monokai").setup({
      -- Basic theme options
      style = "dark",
      dark_style_background = "default",
      
      -- Disable italics in syntax highlighting
      hl_styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = { italic = false },
        variables = { italic = false },
      },
      
      -- Remove any remaining italic/bold styles
      on_highlights = function(highlights, _)
        for _, group in pairs(highlights) do
          -- Remove italic
          if group.italic then
            group.italic = false
          end
          -- Remove bold
          if group.bold then
            group.bold = false
          end
        end
      end,
    })

    -- Apply the colorscheme AFTER setup
    vim.cmd.colorscheme("classic-monokai")
  end,
}
```

Important notes:
1. Always call `setup()` BEFORE applying the colorscheme
2. Remove unused legacy options like `floats`, `sidebars`, `plugins`, etc.
3. The `on_highlights` function will catch any remaining italic/bold styles
4. Make sure your terminal isn't forcing italics 

---

## Selective Plugin Integration

```lua
require("classic_monokai").setup({
  plugins = {
    telescope = true,      -- enable Telescope integration
    treesitter = true,     -- enable Treesitter integration
    cmp = false,           -- disable nvim-cmp integration
    nvimtree = true,       -- enable NvimTree integration
    -- add more as needed
  },
})
vim.cmd.colorscheme("classic-monokai")
```

## Customizing Colors with `on_colors`

```lua
require("classic_monokai").setup({
  on_colors = function(colors)
    colors.bg = "#22212c"         -- custom background
    colors.green = "#b8cc52"      -- custom green
    -- customize more palette colors as needed
  end,
})
vim.cmd.colorscheme("classic-monokai")
```

## Using the Theme Toggle Command in a Keymap

```lua
vim.keymap.set("n", "<leader>mt", ":MonokaiToggleLight<CR>", { desc = "Toggle Monokai Light/Dark" })
```

## Transparent Backgrounds and Floating Windows

```lua
require("classic_monokai").setup({
  dark_style_background = "transparent",
  hl_styles = {
    floats = "transparent", -- make floating windows transparent
  },
})
vim.cmd.colorscheme("classic-monokai")
```

## Customizing Diagnostic Colors

```lua
require("classic_monokai").setup({
  on_highlights = function(highlights, colors)
    highlights.DiagnosticError = { fg = "#ff5555" }
    highlights.DiagnosticWarn = { fg = "#f1fa8c" }
    highlights.DiagnosticInfo = { fg = colors.blue }
    highlights.DiagnosticHint = { fg = colors.green }
  end,
})
vim.cmd.colorscheme("classic-monokai")
``` 