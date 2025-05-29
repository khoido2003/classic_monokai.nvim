# �� Classic Monokai

A Neovim colorscheme inspired by the classic Monokai theme from Sublime Text. This theme is a fork of [monokai-nightasty.nvim](https://github.com/polirritmico/monokai-nightasty.nvim) with customizations to make it closer to the original Sublime Text Monokai experience.

> Special thanks to [@polirritmico](https://github.com/polirritmico) for creating the original monokai-nightasty.nvim theme that served as the foundation for this project.

## 🎯 Why This Theme?

I've always loved the classic Monokai theme from Sublime Text - its vibrant colors and excellent readability made coding a joy. This theme aims to bring that same experience to Neovim while adding modern features like:

* Dark and Light themes with consistent styling
* Support for modern Neovim features and popular plugins
* Customizable highlighting styles
* Optional transparent backgrounds

## 🚀 Quick Start

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "khoido2003/classic_monokai.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Default configuration
    require("classic_monokai").setup()
    vim.cmd.colorscheme("classic-monokai")
  end
}
```

Want to customize? Here's an example with common options:

```lua
require("classic_monokai").setup({
  -- Choose style: "dark" or "light"
  style = "dark",
  
  -- Make comments and keywords italic
  hl_styles = {
    comments = { italic = true },
    keywords = { italic = true },
  },
  
  -- Use transparent background
  dark_style_background = "transparent",
})
```

## 🎨 Color Palette

### Dark Theme
| Color   | Hex     | Used For |
|---------|---------|----------|
| Yellow  | #ffff87 | Strings |
| Purple  | #af87ff | Constants |
| Green   | #a4e400 | Functions |
| Blue    | #62d8f1 | Types |
| Magenta | #fc1a70 | Keywords |
| Orange  | #ff9700 | Parameters |

### Light Theme
| Color   | Hex     | Used For |
|---------|---------|----------|
| Yellow  | #ff8f00 | Strings |
| Purple  | #6054d0 | Constants |
| Green   | #4fb000 | Functions |
| Blue    | #00b3e3 | Types |
| Magenta | #ff004b | Keywords |
| Orange  | #ff4d00 | Parameters |

## ⚡️ Commands

- `:colorscheme classic-monokai` - Apply the theme
- `:MonokaiToggleLight` - Switch between dark/light modes

## 📚 Need More Options?

Check `:help classic-monokai` for detailed configuration options and plugin integrations.

## 🤝 Contributing

This theme is a fork of monokai-nightasty.nvim and follows its open-source spirit. Feel free to:
- Report issues
- Suggest improvements
- Submit pull requests

## 📝 License

This project is open source and available under the same license as monokai-nightasty.nvim.
