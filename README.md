# 🫖 Classic Monokai

A dark/light theme for Neovim based on the Monokai color palette. This theme is a fork of monokai-nightasty.nvim with customizations and improvements.

## 🌆 Features

* Infused with the Monokai palette for a vibrant, distraction-free coding experience.
* Dark and Light themes with consistent color schemes
* Support for popular plugins including:
  * [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
  * [LSP](https://github.com/neovim/nvim-lspconfig)
  * [Telescope](https://github.com/nvim-telescope/telescope.nvim)
  * [NvimTree](https://github.com/nvim-tree/nvim-tree.lua)
  * [Lualine](https://github.com/nvim-lualine/lualine.nvim)
  * And many more!

## 🚀 Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "khoido2003/classic_monokai.nvim",
  lazy = false,
  priority = 1000,
  opts = function()
    return {
      dark_style_background = "default", -- default, dark, transparent, #RRGGBB
      light_style_background = "default", -- default, dark, transparent, #RRGGBB
      markdown_header_marks = true,
      -- hl_styles = { comments = { italic = false } },
      terminal_colors = function(colors) return { fg = colors.fg_dark } end,
    }
  end,
  config = function(_, opts)
    vim.opt.cursorline = true -- Highlight line at the cursor position
    vim.o.background = "dark" -- Default to dark theme
    require("classic_monokai").load(opts)
  end,
}
```

## 🎨 Configuration

You can customize the theme by passing options to the setup function:

```lua
require("classic_monokai").setup({
  dark_style_background = "default", -- default, dark, transparent, #RRGGBB
  light_style_background = "default", -- default, dark, transparent, #RRGGBB
  color_headers = true, -- Enable header colors for each header level (h1, h2, etc.)
  lualine_bold = true, -- Lualine a and z sections font width
  lualine_style = "default", -- "dark", "light" or "default" (Follows dark/light style)
  markdown_header_marks = true, -- Add headers marks highlights (the `#` character) to Treesitter highlight query
  -- Style to be applied to selected syntax groups. See `:help nvim_set_hl`
  hl_styles = {
    keywords = { italic = true },
    comments = { italic = true },
    floats = "dark",
  },
})
```

## 🎨 Color Palettes

### 🌃 Dark Style

| Color name | Hex code |
| ---------- | -------- |
| Yellow     | #ffff87  |
| Purple     | #af87ff  |
| Green      | #a4e400  |
| Blue       | #62d8f1  |
| Magenta    | #fc1a70  |
| Orange     | #ff9700  |

### 🏙️ Light Style

| Color name | Hex code |
| ---------- | -------- |
| Yellow     | #ff8f00  |
| Purple     | #6054d0  |
| Green      | #4fb000  |
| Blue       | #00b3e3  |
| Magenta    | #ff004b  |
| Orange     | #ff4d00  |

## 🌱 Contributing

This plugin is a fork of monokai-nightasty.nvim. Contributions, issues, and pull requests are welcome!

## License

Apache-2.0 license
