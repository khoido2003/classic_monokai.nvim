local utils = require("monokai.utils")

local M = {}

M.url = "https://github.com/nvim-treesitter"
-- M.url = "https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights"

---@type monokai.HighlightsFn
function M.get(c, opts)
  local ret = {
    ["@annotation"] = "PreProc",
    ["@attribute"] = "PreProc", -- attribute annotations (e.g. Python decorators)
    ["@attribute.builtin"] = { fg = c.magenta, italic = true }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@boolean"] = "Boolean", -- boolean literals
    ["@character"] = "Character", -- character literals
    ["@character.special"] = "SpecialChar", -- special characters (e.g. wildcards)
    ["@comment"] = "Comment", -- line and block comments
    -- ["@comment.documentation"] = "Comment", -- comments documenting code
    -- ["@comment.error"] = { fg = c.bg, bg = c.error }, -- error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED:`)
    -- ["@comment.hint"] = { fg = c.hint },
    -- ["@comment.info"] = { fg = c.info },
    -- ["@comment.note"] = { fg = c.bg, bg = c.note, nocombine = true }, -- note-type comments (e.g. `NOTE:`, `INFO:`, `XXX`)
    -- ["@comment.todo"] = { fg = c.black, bg = c.todo, nocombine = true }, -- todo-type comments (e.g. `TODO:`, `WIP:`, `FIXME:`)
    -- ["@comment.warning"] = { fg = c.warning }, -- line and block comments
    ["@constant"] = "Constant", -- constant identifiers
    ["@constant.builtin"] = "Special", -- built-in constant values
    ["@constant.macro"] = "Define", -- constants defined by the preprocessor
    ["@constructor"] = { fg = c.blue, italic = true }, -- constructor calls and definitions
    ["@diff.delta"] = "DiffChange", -- changed text (for diff files)
    ["@diff.minus"] = "DiffDelete", -- deleted text (for diff files)
    ["@diff.plus"] = "DiffAdd", -- added text (for diff files)
    ["@function"] = "Function", -- function definitions
    ["@function.builtin"] = { fg = c.green }, -- built-in functions
    ["@function.call"] = "@function", -- function calls
    ["@function.macro"] = "Macro", -- preprocessor macros
    ["@function.method"] = "Function", -- method definitions
    ["@function.method.call"] = "Function", -- method calls
    ["@keyword"] = { fg = c.magenta, style = opts.hl_styles.keywords }, -- keywords not fitting into specific categories
    ["@keyword.conditional"] = "Conditional", -- keywords related to conditionals (e.g. `if` / `else`)
    ["@keyword.conditional.htmldjango"] = { fg = c.orange },
    ["@keyword.conditional.ternary"] = "Conditional", -- ternary operator (e.g. `?` / `:`)
    ["@keyword.coroutine"] = "@keyword", -- keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
    ["@keyword.debug"] = "Debug", -- keywords related to debugging
    ["@keyword.directive"] = { fg = utils.darken(c.comment, 0.73), nocombine = true }, -- various preprocessor directives & shebangs
    ["@keyword.directive.define"] = "Define", -- preprocessor definition directives
    ["@keyword.exception"] = "Exception", -- keywords related to exceptions (e.g. `throw` / `catch`)
    ["@keyword.function"] = { fg = c.blue, italic = true }, -- keywords that define a function (e.g. `func` in Go, `def` in Python)
    ["@keyword.import"] = "Include", -- keywords for including modules (e.g. `import` / `