local config = require("classic_monokai.config")

local M = {}

---@param opts? monokai.Config|monokai.UserConfig
function M.setup(opts)
  -- Store options for later use
  config.setup(opts)
end

---@param opts? monokai.Config|monokai.UserConfig
function M.load(opts)
  if not M.loaded and config.defaults == config.options and opts then
    config.setup(opts)
  end

  -- Extend options with any provided overrides
  opts = config.extend(opts)
  opts.style = not M.loaded and opts.style or vim.o.background

  if not M.loaded then
    -- Create user command for toggling theme
    vim.api.nvim_create_user_command(
      "MonokaiToggleLight",
      M.toggle,
      { desc = "Classic Monokai: Toggle light/dark theme" }
    )

    -- Setup markdown header marks if enabled
    if opts.markdown_header_marks then
      local ok, ts_markdown = pcall(require, "classic_monokai.extras.ts_markdown")
      if ok then
        ts_markdown.set_headers_marks()
      end
    end

    M.loaded = true
  end

  -- Load the theme
  local ok, theme = pcall(require, "classic_monokai.theme")
  if not ok then
    vim.notify("Failed to load classic_monokai theme: " .. theme, vim.log.levels.ERROR)
    return
  end

  theme.setup(opts)
end

---Toggle dark/light theme. Sets the `vim.o.background` to `dark` or `light`.
function M.toggle()
  vim.o.background = (vim.o.background == "dark") and "light" or "dark"
end

return M
