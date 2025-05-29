if vim.g.colors_name then
  vim.cmd("hi clear")
end

vim.g.colors_name = "classic-monokai"

local ok, classic_monokai = pcall(require, "classic_monokai")
if not ok then
  vim.notify("Failed to load classic_monokai: " .. classic_monokai, vim.log.levels.ERROR)
  return
end

classic_monokai.load()
