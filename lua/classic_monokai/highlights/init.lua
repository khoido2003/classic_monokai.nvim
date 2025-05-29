local utils = require("classic_monokai.utils")
local config = require("classic_monokai.config")

local M = {}

M.implemented_plugins = {
  ["aerial.nvim"] = "aerial",
  ["ale"] = "ale",
  ["alpha-nvim"] = "alpha",
  ["barbar.nvim"] = "barbar",
  ["blink.cmp"] = "blink",
  ["bufferline.nvim"] = "bufferline",
  ["dashboard-nvim"] = "dashboard",
  ["flash.nvim"] = "flash",
  ["fzf-lua"] = "fzf",
  ["gitsigns.nvim"] = "gitsigns",
  ["headlines.nvim"] = "headlines",
  ["indent-blankline.nvim"] = "indent-blankline",
  ["justinmk/dirvish.vim"] = "dirvish",
  ["lazy.nvim"] = "lazy",
  ["leap.nvim"] = "leap",
  ["lspsaga.nvim"] = "lspsaga",
  ["mini.diff"] = "mini_diff",
  ["mini.hipatterns"] = "mini_hipatterns",
  ["mini.icons"] = "mini_icons",
  ["mini.indentscope"] = "mini_indentscope",
  ["mini.statusline"] = "mini_statusline",
  ["neo-tree.nvim"] = "neo-tree",
  ["neogit"] = "neogit",
  ["neotest"] = "neotest",
  ["noice.nvim"] = "noice",
  ["nvim-cmp"] = "cmp",
  ["nvim-dap-ui"] = "dapui",
  ["nvim-navic"] = "navic",
  ["nvim-notify"] = "notify",
  ["nvim-scrollbar"] = "scrollbar",
  ["nvim-tree.lua"] = "nvim-tree",
  ["nvim-treesitter-context"] = "treesitter-context",
  ["rainbow-delimiters.nvim"] = "rainbow",
  ["render-markdown.nvim"] = "render-markdown",
  ["snacks.nvim"] = "snacks",
  ["telescope.nvim"] = "telescope",
  ["todo-comments.nvim"] = "todo-comments",
  ["trouble.nvim"] = "trouble",
  ["undotree"] = "undotree",
  ["vim-gitgutter"] = "gitgutter",
  ["vim-sneak"] = "sneak",
  ["vimwiki"] = "vimwiki",
  ["which-key.nvim"] = "which-key",
  ["yanky.nvim"] = "yanky",
}

---@param colors ColorScheme
---@param opts monokai.Config
function M.setup(colors, opts)
  -- Generate the enabled highlight groups
  M.generate_enabled_hlgroups(opts)

  -- Generate the inputs for the cache
  local inputs = M.generate_inputs(opts)

  -- Check if we have a valid cache
  local cache = utils.cache.read(opts.style)
  if cache and vim.deep_equal(cache.inputs, inputs) then
    -- Apply non-cached styles customizations (colors are already applied)
    if opts.on_highlights then
      opts.on_highlights(cache.hlgroups, colors)
    end
    return cache.hlgroups
  end

  -- Generate the highlight groups
  local hlgroups = M.generate_hlgroups(colors, opts)

  -- Cache the results
  if opts.cache then
    utils.cache.write(opts.style, { inputs = inputs, hlgroups = hlgroups, colors = colors })
  end

  return hlgroups
end

---@param opts monokai.Config
function M.generate_enabled_hlgroups(opts)
  if M.enabled_hlgroups then
    return M.enabled_hlgroups
  end

  local enabled_hlgroups = {
    base = true,
    builtins = true,
    kinds = true,
    semantic_tokens = true,
    treesitter = true,
  }

  -- Add plugins to the enabled_hlgroups and apply user configs
  if opts.plugins.all then
    for plugin_name, plugin_mod in pairs(M.implemented_plugins) do
      enabled_hlgroups[plugin_mod] = opts.plugins[plugin_name] ~= false or nil
    end
  elseif opts.auto_enable_plugins and package.loaded.lazy then
    local lazy_plugins = require("lazy.core.config").plugins
    for plugin_name, plugin_mod in pairs(M.implemented_plugins) do
      if lazy_plugins[plugin_name] then
        enabled_hlgroups[plugin_mod] = opts.plugins[plugin_name] ~= false or nil
      end
    end
    -- NOTE: if mini.nvim then enable all mini modules
    if opts.plugins["mini.nvim"] ~= false and lazy_plugins["mini.nvim"] then
      for _, plugin_mod in pairs(M.implemented_plugins) do
        if plugin_mod:find("^mini_") then
          enabled_hlgroups[plugin_mod] = true
        end
      end
    end
  else
    for plugin_name, enabled in pairs(opts.plugins) do
      if plugin_name ~= "all" then
        enabled_hlgroups[plugin_name] = enabled or nil
      end
    end
  end

  M.enabled_hlgroups = enabled_hlgroups
  return enabled_hlgroups
end

---@param colors ColorScheme
---@param opts monokai.Config
function M.get(hlgroup, colors, opts)
  ---@type {get: monokai.HighlightsFn}
  local module = utils.mod("classic_monokai.highlights." .. hlgroup)
  return module.get(colors, opts)
end

function M.generate_style_modules()
  local style_modules = vim.tbl_keys(M.enabled_hlgroups)
  table.sort(style_modules)
  return style_modules
end

---@param opts monokai.Config
---@return table
function M.generate_inputs(opts)
  M.inputs = {
    version = config.version,
    opts = {
      auto_enable_plugins = opts.auto_enable_plugins,
      color_headers = opts.color_headers,
      dark_style_background = opts.dark_style_background,
      dim_inactive = opts.dim_inactive,
      hl_styles = opts.hl_styles,
      light_style_background = opts.light_style_background,
      lualine_bold = opts.lualine_bold,
      lualine_style = opts.lualine_style,
      plugins = opts.plugins,
    },
    style_modules = M.generate_style_modules(),
  }

  return M.inputs
end

return M
