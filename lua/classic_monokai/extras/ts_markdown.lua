local M = {}

---@return string data The file content
function M.read_markdown_highlights_query()
  local file = vim.treesitter.query.get_files("markdown", "highlights")[1]
  local fd = assert(io.open(file, "r"))
  local data = fd:read("*a")
  fd:close()
  return data
end

---@type boolean To avoid that set_headers_marks run multiple times
M.set_headers_marks_was_executed = false

---@type boolean To avoid applying the query multiple times (one per event)
M.set_query_was_executed = false

---Add markdown header marks into Treesitter highlights queries
-- HACK: Restore markdown header markers:
-- https://github.com/nvim-treesitter/nvim-treesitter/issues/6260
function M.set_headers_marks()
  if M.set_headers_marks_was_executed then
    return
  end
  M.set_headers_marks_was_executed = true

  local ok, parser = pcall(vim.treesitter.get_parser, 0, "markdown")
  if not ok then
    local msg = "classic_monokai: Can't access markdown highlights query file."
    vim.notify(msg, vim.log.levels.WARN)
    return
  end

  local query = vim.treesitter.query.get("markdown", "highlights")
  if not query then
    local msg = "classic_monokai: Can't access markdown highlights query file."
    vim.notify(msg, vim.log.levels.WARN)
    return
  end

  local query_string = query:gsub(
    "(#set! conceal .)([%s\n]+)([%w_]+%s+%[#%])",
    "%1%2%3 @conceal"
  )

  vim.treesitter.query.set("markdown", "highlights", query_string)

  vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = { "*.md", "*.markdown" },
    group = vim.api.nvim_create_augroup("MonokaiNightastyTSfix", {}),
    once = true,
    desc = "Enable Treesitter `#` headers marks",
    callback = function(ev)
      if M.set_query_was_executed then
        return
      end

      vim.treesitter.start(ev.buf)
    end,
  })
end

return M
