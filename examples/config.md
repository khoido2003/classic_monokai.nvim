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
  -- Theme style: choose "dark" for classic Monokai or "light" for light mode
  style = "dark", -- "dark" | "light"

  -- Background style for dark mode: "default" (classic), "dark" (darker), "transparent", or a hex color (e.g. "#1a1a1a")
  dark_style_background = "default", -- "default" | "dark" | "transparent" | "#RRGGBB"
  -- Background style for light mode: "default" (classic), "dark" (darker), "transparent", or a hex color
  light_style_background = "default", -- "default" | "dark" | "transparent" | "#RRGGBB"

  hl_styles = {
    -- Enable/disable italic for comments
    comments = { italic = true }, -- true | false
    -- Enable/disable italic for keywords
    keywords = { italic = true }, -- true | false
    -- Enable/disable italic for functions
    functions = { italic = false }, -- true | false
    -- Enable/disable italic for variables
    variables = { italic = false }, -- true | false
    -- Background style for floating windows: "default", "dark", "transparent", or hex color
    floats = "dark", -- "default" | "dark" | "transparent" | "#RRGGBB"
    -- Background style for sidebars (nvim-tree, etc.): "default", "dark", "transparent", or hex color
    sidebars = "dark", -- "default" | "dark" | "transparent" | "#RRGGBB"
  },

  -- Automatically enable plugin integrations (set to false to manually control plugins)
  auto_enable_plugins = true, -- true | false

  -- Enable colored headers in markdown files
  color_headers = true, -- true | false

  -- Dim inactive windows for better focus
  dim_inactive = false, -- true | false

  -- Use bold font in lualine section headers
  lualine_bold = true, -- true | false
  -- Lualine background style: "default" (follows theme), "dark", or "light"
  lualine_style = "default", -- "default" | "dark" | "light"

  -- Highlight '#' in markdown headers
  markdown_header_marks = false, -- true | false

  -- Set terminal colors: true to enable, false to disable, or provide a table/function for custom colors
  terminal_colors = true, -- true | false | table | function

  -- Enable theme caching for better performance
  cache = true, -- true | false
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

## Default Theme

```lua
M.defaults = {
  -- Background style for dark mode: "default" (classic), "dark" (darker), "transparent", or a hex color (e.g. "#1a1a1a")
  dark_style_background = "default", -- "default" | "dark" | "transparent" | "#RRGGBB"

  -- Background style for light mode: "default" (classic), "dark" (darker), "transparent", or a hex color
  light_style_background = "default", -- "default" | "dark" | "transparent" | "#RRGGBB"

  hl_styles = {
    -- Custom styles for highlight groups (see :help nvim_set_hl for keys)
    comments = { italic = true },    -- true | false
    keywords = { italic = false },   -- true | false
    functions = {},                  -- e.g. { italic = true, bold = true }
    variables = {},                  -- e.g. { italic = false }
    -- Background style for floating windows: "default", "dark", "transparent", or hex color
    floats = "default",              -- "default" | "dark" | "transparent" | "#RRGGBB"
    -- Background style for sidebars (nvim-tree, etc.): "default", "dark", "transparent", or hex color
    sidebars = "default",            -- "default" | "dark" | "transparent" | "#RRGGBB"
  },

  color_headers = false,             -- true | false: Enable colored headers in markdown
  dim_inactive = false,              -- true | false: Dim inactive windows
  lualine_bold = true,               -- true | false: Lualine section headers bold
  lualine_style = "default",         -- "default" | "dark" | "light": Lualine background style
  markdown_header_marks = false,     -- true | false: Highlight '#' in markdown headers

  -- Terminal colors: true to enable, false to disable, or a table/function for custom colors
  terminal_colors = true,            -- true | false | table | function

  -- Override palette colors
  -- Example:
  -- on_colors = function(colors)
  --   colors.bg = "#22212c"
  -- end,
  on_colors = function(colors) end,

  -- Override highlight groups
  -- Example:
  -- on_highlights = function(highlights, colors)
  --   highlights.Normal = { fg = colors.fg, bg = colors.bg }
  -- end,
  on_highlights = function(highlights, colors) end,

  cache = true,                      -- true | false: Enable theme caching for performance

  auto_enable_plugins = true,        -- true | false: Auto-enable supported plugin highlights

  -- Manually enable/disable plugin integrations by name
  -- Example:
  -- plugins = {
  --   ["telescope.nvim"] = true,
  --   ["nvim-tree.lua"] = false,
  --   all = false, -- disable all plugins by default
  -- }
  plugins = {
    all = package.loaded.lazy == nil,
  },
} 
```