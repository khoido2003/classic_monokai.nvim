# 🫖 Classic Monokai

A dark/light theme for Neovim based on the Monokai color palette. This theme is a fork of [monokai-nightasty.nvim](https://github.com/polirritmico/monokai-nightasty.nvim) with customizations and improvements.

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
  opts = {
    -- Your configuration here
  },
}
```

After installation, set the colorscheme:

```lua
-- In your init.lua
vim.cmd.colorscheme("classic-monokai")
```

Or with lazy.nvim's config:

```lua
{
  "khoido2003/classic_monokai.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("classic-monokai")
  end,
  opts = {
    dark_style_background = "default",
    light_style_background = "default",
    hl_styles = {
      comments = { italic = false },
      keywords = { italic = false },
      functions = { italic = false },
      variables = { italic = false },
      floats = "default",
      sidebars = "default",
    },
    on_highlights = function(highlights, _)
      for _, group in pairs(highlights) do
        if group.italic then
          group.italic = false
        end
        if group.bold then
          group.bold = false
        end
      end
    end,
    auto_enable_plugins = true,
    plugins = { all = true },
    color_headers = true,
    dim_inactive = false,
    lualine_bold = true,
    lualine_style = "default",
    markdown_header_marks = false,
    terminal_colors = true,
    cache = false,
  },
}
```

## 🎨 Configuration

The theme comes with the following defaults:

```lua
{
  style = vim.o.background,
  dark_style_background = "default",
  light_style_background = "default",
  plugins = { all = true },
  hl_styles = {
    comments = { italic = false },
    keywords = { italic = false },
    functions = { italic = false },
    variables = { italic = false },
    floats = "default",
    sidebars = "default",
  },
  dim_inactive = false,
  lualine_bold = true,
  lualine_style = "default",
  markdown_header_marks = false,
  terminal_colors = true,
  cache = false,
  auto_enable_plugins = true,
  color_headers = true,
}
```

### Commands

- `:MonokaiToggleLight` - Toggle between dark and light themes

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

This plugin is a fork of [monokai-nightasty.nvim](https://github.com/polirritmico/monokai-nightasty.nvim). Contributions, issues, and pull requests are welcome!

## 📝 License

MIT
