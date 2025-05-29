if vim.g.colors_name then
  vim.cmd("hi clear")
end

vim.g.colors_name = "classic-monokai"
require("classic_monokai").load()
