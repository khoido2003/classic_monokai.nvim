local config = require("monokai.config")
local theme = require("monokai.theme")
local utils = require("monokai.utils")

local M = {}

---@param opts? monokai.Config|monokai.UserConfig
function M.load(opts)
  if not M.loaded and config.defaults == config.options and opts then
    config.setup(opts)
  end

  opts = config.extend(opts)
  opts.style = not M.loaded and opts.style or vim.o.background

  if not M.loaded then
    vim.api.nvim_create_user_command(
      "MonokaiToggleLight",
      M.toggle,
      { desc = "Monokai: Toggle light/dark theme" }
    )

    if opts.markdown_header_marks then
      require("monokai.extras.ts_markdown").set_headers_marks()
    end

    -- Ensure treesitter module is loaded
    require("monokai.highlights.treesitter")

    M.loaded = true
  end

  theme.setup(opts)
end

---Toggle dark/light theme. Sets the `vim.o.background` to `dark` or `light`.
function M.toggle()
  vim.o.background = (vim.o.background == "dark") and "light" or "dark"
end

M.setup = config.setup

return M
