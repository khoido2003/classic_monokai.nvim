-- ColorScheme: Monokai Classic (Adapted for Neovim)

local colors = {
  bg = "#272822", -- editor.background
  bg_columns = "#34352f", -- tab.inactiveBackground
  bg_dark = "#1e1f1c", -- editorGroupHeader.tabsBackground, sideBar.background
  bg_darker = "#1e1f1c", -- menu.background
  bg_float = "#1e1f1c", -- editorWidget.background
  bg_highlight = "#414339", -- dropdown.background
  bg_menusel = "#75715e", -- list.activeSelectionBackground
  bg_menuselbar = "#414339", -- panel.border
  bg_popup = "#1e1f1c", -- peekViewResult.background
  bg_search = "#75715e", -- peekViewResult.matchHighlightBackground
  bg_sidebar = "#1e1f1c", -- sideBar.background
  bg_status_alt = "#414339", -- statusBar.background
  bg_statusline = "#414339", -- statusBar.background
  bg_visual = "#878b9180", -- editor.selectionBackground
  black = "#000000", -- Fallback from NightTasty
  blue = "#66d9ef", -- terminal.ansiBrightCyan
  blue_alt = "#819aff", -- terminal.ansiBrightBlue
  border = "#75715e", -- editorGroup.border
  border_highlight = "#f8f8f2", -- editor.foreground
  charcoal = "#272822", -- editor.background
  charcoal_light = "#414339", -- dropdown.background
  charcoal_medium = "#272822", -- editor.background
  comment = "#88846f", -- From tokenColors for comment
  diff = {
    add = "#4b661680", -- diffEditor.insertedTextBackground
    change = "#25394b", -- Fallback from NightTasty
    delete = "#90274a70", -- diffEditor.removedTextBackground
    text = "#1e476b", -- Fallback from NightTasty
  },
  error = "#f92672", -- terminal.ansiBrightRed
  fg = "#f8f8f2", -- editor.foreground
  fg_dark = "#ccccc7", -- tab.inactiveForeground
  fg_float = "#f8f8f2", -- editor.foreground
  fg_gutter = "#90908a", -- editorLineNumber.foreground
  fg_search = "#f8f8f2", -- editor.foreground
  fg_sidebar = "#ccccc7", -- tab.inactiveForeground
  fg_statusline = "#ccccc7", -- tab.inactiveForeground
  git = {
    add = "#a6e22e", -- tokenColors markup.inserted
    change = "#e6db74", -- tokenColors markup.changed
    delete = "#f92672", -- tokenColors markup.deleted
  },
  green = "#a6e22e", -- tokenColors entity.name.class
  green_alt = "#a6e22e", -- Same as green
  green_light = "#a6e22e", -- Same as green
  grey = "#75715e", -- list.activeSelectionBackground
  grey_dark = "#464741", -- editorWhitespace.foreground
  grey_darker = "#414339", -- dropdown.background
  grey_darker_alt = "#414339", -- dropdown.background
  grey_light = "#ccccc7", -- tab.inactiveForeground
  grey_lighter = "#e3e3dd", -- terminal.ansiWhite
  grey_medium = "#88846f", -- tokenColors comment
  hint = "#66d9ef", -- terminal.ansiBrightCyan
  info = "#819aff", -- terminal.ansiBrightBlue
  lualine = {
    command_fg = "#a6e22e", -- tokenColors entity.name.class
    normal_bg = "#a6e22e", -- tokenColors entity.name.class
    normal_fg = "#272822", -- editor.background
  },
  magenta = "#f92672", -- terminal.ansiBrightRed
  none = "NONE",
  note = "#e6db74", -- tokenColors string
  orange = "#fd971f", -- tokenColors variable.parameter
  purple = "#ae81ff", -- tokenColors constant.numeric
  rainbow = {
    "#f8f8f2", -- editor.foreground
    "#e6db74", -- tokenColors string
    "#fd971f", -- tokenColors variable.parameter
    "#f92672", -- tokenColors keyword
    "#ae81ff", -- tokenColors constant.numeric
    "#66d9ef", -- tokenColors storage.type
  },
  rainbow_bg = {
    "#414339", -- dropdown.background
    "#3e3d32", -- list.hoverBackground
    "#34352f", -- tab.inactiveBackground
    "#414339", -- dropdown.background
    "#414339", -- dropdown.background
    "#414339", -- dropdown.background
  },
  red = "#f92672", -- terminal.ansiBrightRed
  terminal_black = "#333333", -- terminal.ansiBlack
  todo = "#ae81ff", -- tokenColors constant.numeric
  warning = "#e2e22e", -- terminal.ansiBrightYellow
  white = "#f8f8f2", -- editor.foreground
  yellow = "#e6db74", -- tokenColors string
  yellow_alt = "#e2e22e", -- terminal.ansiBrightYellow
}

local highlights = {
  ["@OrgTSHeadlineLevel1"] = { bg = "#414339", bold = true }, -- Adapted from rainbow_bg[1]
  ["@OrgTSHeadlineLevel2"] = { bg = "#3e3d32", bold = true }, -- Adapted from rainbow_bg[2]
  ["@OrgTSHeadlineLevel3"] = { bg = "#34352f", bold = true }, -- Adapted from rainbow_bg[3]
  ["@OrgTSHeadlineLevel4"] = { bg = "#414339", bold = true }, -- Adapted from rainbow_bg[4]
  ["@OrgTSHeadlineLevel5"] = { bg = "#414339", bold = true }, -- Adapted from rainbow_bg[5]
  ["@OrgTSHeadlineLevel6"] = { bg = "#414339", bold = true }, -- Adapted from rainbow_bg[6]
  ["@annotation"] = { fg = "#f92672" }, -- tokenColors PreProc
  ["@attribute"] = { fg = "#f92672" }, -- tokenColors PreProc
  ["@attribute.builtin"] = { fg = "#f92672", italic = true }, -- tokenColors keyword
  ["@boolean"] = { fg = "#ae81ff" }, -- tokenColors constant.language
  ["@character"] = { fg = "#ae81ff" }, -- tokenColors constant.character
  ["@character.special"] = { fg = "#ae81ff" }, -- tokenColors constant.other
  ["@comment"] = { fg = "#88846f", italic = true }, -- tokenColors comment
  ["@constant"] = { fg = "#ae81ff" }, -- tokenColors constant
  ["@constant.builtin"] = { fg = "#ae81ff" }, -- tokenColors constant.language
  ["@constant.macro"] = { fg = "#f92672" }, -- tokenColors Define
  ["@constructor"] = { fg = "#66d9ef", italic = true }, -- tokenColors storage.type
  ["@constructor.lua"] = { fg = "#f92672" }, -- tokenColors keyword
  ["@diff.delta"] = { bg = "#25394b" }, -- NightTasty DiffChange
  ["@diff.minus"] = { bg = "#90274a70" }, -- diffEditor.removedTextBackground
  ["@diff.plus"] = { bg = "#4b661680" }, -- diffEditor.insertedTextBackground
  ["@function"] = { fg = "#a6e22e" }, -- tokenColors entity.name.function
  ["@function.builtin"] = { fg = "#a6e22e" }, -- tokenColors support.function
  ["@function.builtin.bash"] = { fg = "#66d9ef" }, -- tokenColors support.function
  ["@function.call"] = { fg = "#a6e22e" }, -- Inherit from @function
  ["@function.macro"] = { fg = "#f92672" }, -- tokenColors Macro
  ["@function.method"] = { fg = "#a6e22e" }, -- tokenColors entity.name.function
  ["@function.method.call"] = { fg = "#a6e22e" }, -- Inherit from @function.method
  ["@keyword"] = { fg = "#f92672", italic = false }, -- tokenColors keyword
  ["@keyword.conditional"] = { fg = "#f92672" }, -- tokenColors keyword
  ["@keyword.conditional.htmldjango"] = { fg = "#fd971f" }, -- tokenColors variable.parameter
  ["@keyword.coroutine"] = { fg = "#f92672" }, -- Inherit from @keyword
  ["@keyword.debug"] = { fg = "#b267e6" }, -- tokenColors debug-token
  ["@keyword.directive"] = { fg = "#aaaaaa", nocombine = true }, -- NightTasty
  ["@keyword.directive.define"] = { fg = "#f92672" }, -- tokenColors Define
  ["@keyword.exception"] = { fg = "#f92672" }, -- tokenColors Exception
  ["@keyword.function"] = { fg = "#66d9ef", italic = true }, -- tokenColors storage.type
  ["@keyword.import"] = { fg = "#f92672" }, -- tokenColors Include
  ["@keyword.operator"] = { fg = "#f92672" }, -- tokenColors Operator
  ["@keyword.operator.htmldjango"] = { fg = "#fd971f" }, -- tokenColors variable.parameter
  ["@keyword.repeat"] = { fg = "#f92672" }, -- tokenColors Repeat
  ["@keyword.repeat.htmldjango"] = { fg = "#fd971f" }, -- tokenColors variable.parameter
  ["@keyword.return"] = { fg = "#f92672" }, -- Inherit from @keyword
  ["@keyword.storage"] = { fg = "#66d9ef" }, -- tokenColors storage
  ["@lsp.type.boolean"] = { fg = "#ae81ff" }, -- tokenColors constant.language
  ["@lsp.type.builtinType"] = { fg = "#66d9ef", italic = true }, -- tokenColors storage.type
  ["@lsp.type.class.markdown"] = { fg = "#e6db74" }, -- tokenColors string
  ["@lsp.type.comment"] = { fg = "#88846f" }, -- tokenColors comment
  ["@lsp.type.decorator"] = { fg = "#f92672" }, -- tokenColors PreProc
  ["@lsp.type.deriveHelper"] = { fg = "#f92672" }, -- tokenColors PreProc
  ["@lsp.type.enum"] = { fg = "#66d9ef" }, -- tokenColors storage.type
  ["@lsp.type.enumMember"] = { fg = "#ae81ff" }, -- tokenColors constant
  ["@lsp.type.escapeSequence"] = { fg = "#ae81ff" }, -- tokenColors constant.character
  ["@lsp.type.formatSpecifier"] = { fg = "#f92672" }, -- tokenColors markup.list
  ["@lsp.type.generic"] = { fg = "#f8f8f2" }, -- tokenColors variable
  ["@lsp.type.interface"] = { fg = "#66d9ef" }, -- tokenColors support.type
  ["@lsp.type.keyword"] = { fg = "#f92672" }, -- tokenColors keyword
  ["@lsp.type.lifetime"] = { fg = "#66d9ef" }, -- tokenColors storage
  ["@lsp.type.namespace"] = { fg = "#a6e22e" }, -- tokenColors entity.name.namespace
  ["@lsp.type.number"] = { fg = "#ae81ff" }, -- tokenColors constant.numeric
  ["@lsp.type.operator"] = { fg = "#f92672" }, -- tokenColors Operator
  ["@lsp.type.parameter"] = { fg = "#fd971f", italic = true }, -- tokenColors variable.parameter
  ["@lsp.type.property"] = { fg = "#f8f8f2" }, -- tokenColors variable
  ["@lsp.type.selfKeyword"] = { fg = "#fd971f" }, -- tokenColors variable.language
  ["@lsp.type.selfTypeKeyword"] = { fg = "#fd971f" }, -- tokenColors variable.language
  ["@lsp.type.string"] = { fg = "#e6db74" }, -- tokenColors string
  ["@lsp.type.typeAlias"] = { fg = "#66d9ef" }, -- tokenColors storage.type
  ["@lsp.type.unresolvedReference"] = { sp = "#f92672", undercurl = true }, -- tokenColors invalid
  ["@lsp.type.variable"] = { fg = "#f8f8f2" }, -- tokenColors variable
  ["@lsp.typemod.class.defaultLibrary"] = { fg = "#66d9ef" }, -- tokenColors support.class
  ["@lsp.typemod.enum.defaultLibrary"] = { fg = "#66d9ef" }, -- tokenColors support.type
  ["@lsp.typemod.enumMember.defaultLibrary"] = { fg = "#ae81ff" }, -- tokenColors constant
  ["@lsp.typemod.function.defaultLibrary"] = { fg = "#a6e22e" }, -- tokenColors support.function
  ["@lsp.typemod.keyword.async"] = { fg = "#f92672" }, -- Inherit from @keyword
  ["@lsp.typemod.keyword.injected"] = { fg = "#f92672" }, -- tokenColors keyword
  ["@lsp.typemod.macro.defaultLibrary"] = { fg = "#a6e22e" }, -- tokenColors support.function
  ["@lsp.typemod.method.defaultLibrary"] = { fg = "#a6e22e" }, -- tokenColors support.function
  ["@lsp.typemod.operator.injected"] = { fg = "#f92672" }, -- tokenColors Operator
  ["@lsp.typemod.string.injected"] = { fg = "#e6db74" }, -- tokenColors string
  ["@lsp.typemod.struct.defaultLibrary"] = { fg = "#66d9ef" }, -- tokenColors support.type
  ["@lsp.typemod.type.defaultLibrary"] = { fg = "#819aff" }, -- terminal.ansiBrightBlue
  ["@lsp.typemod.typeAlias.defaultLibrary"] = { fg = "#819aff" }, -- terminal.ansiBrightBlue
  ["@lsp.typemod.variable.callable"] = { fg = "#a6e22e" }, -- tokenColors entity.name.function
  ["@lsp.typemod.variable.defaultLibrary"] = { fg = "#fd971f" }, -- tokenColors variable.language
  ["@lsp.typemod.variable.global.lua"] = { fg = "#fd971f" }, -- tokenColors variable.language
  ["@lsp.typemod.variable.injected"] = { fg = "#f8f8f2" }, -- tokenColors variable
  ["@lsp.typemod.variable.static"] = { fg = "#ae81ff" }, -- tokenColors constant
  ["@markup"] = { fg = "#f8f8f2" }, -- editor.foreground
  ["@markup.environment"] = { fg = "#f92672" }, -- tokenColors Macro
  ["@markup.environment.name"] = { fg = "#66d9ef" }, -- tokenColors support.type
  ["@markup.heading"] = { fg = "#a6e22e" }, -- tokenColors markup.heading
  ["@markup.heading.1"] = { fg = "#a6e22e", bold = true }, -- tokenColors markup.heading
  ["@markup.heading.1.marker"] = { fg = "#f92672" }, -- tokenColors entity.name.tag
  ["@markup.heading.2"] = { fg = "#a6e22e", bold = true }, -- tokenColors markup.heading
  ["@markup.heading.2.marker"] = { fg = "#f92672" }, -- tokenColors entity.name.tag
  ["@markup.heading.3"] = { fg = "#a6e22e", bold = true }, -- tokenColors markup.heading
  ["@markup.heading.3.marker"] = { fg = "#f92672" }, -- tokenColors entity.name.tag
  ["@markup.heading.4"] = { fg = "#a6e22e", bold = true }, -- tokenColors markup.heading
  ["@markup.heading.4.marker"] = { fg = "#f92672" }, -- tokenColors entity.name.tag
  ["@markup.heading.5"] = { fg = "#a6e22e", bold = true }, -- tokenColors markup.heading
  ["@markup.heading.5.marker"] = { fg = "#f92672" }, -- tokenColors entity.name.tag
  ["@markup.heading.6"] = { fg = "#a6e22e", bold = true }, -- tokenColors markup.heading
  ["@markup.heading.6.marker"] = { fg = "#f92672" }, -- tokenColors entity.name.tag
  ["@markup.italic"] = { italic = true }, -- tokenColors markup.italic
  ["@markup.link"] = { fg = "#66d9ef" }, -- tokenColors support.type
  ["@markup.link.label"] = { fg = "#66d9ef", underline = true }, -- tokenColors support.type
  ["@markup.link.label.symbol"] = { fg = "#f8f8f2" }, -- tokenColors variable
  ["@markup.link.url"] = { fg = "#e6db74" }, -- tokenColors markup.underline.link.markdown
  ["@markup.list"] = { fg = "#f92672" }, -- tokenColors markup.list
  ["@markup.list.checked"] = { fg = "#f92672" }, -- Inherit from @markup.list
  ["@markup.list.unchecked"] = { fg = "#f92672" }, -- Inherit from @markup.list
  ["@markup.math"] = { fg = "#ae81ff" }, -- tokenColors constant.numeric
  ["@markup.quote"] = { bg = "#1e1f1c", fg = "#f8f8f2", italic = true }, -- tokenColors markup.quote
  ["@markup.raw"] = { fg = "#e6db74" }, -- tokenColors string
  ["@markup.raw.block"] = { fg = "#88846f" }, -- tokenColors comment
  ["@markup.raw.delimiter.markdown_inline"] = { fg = "#ae81ff" }, -- tokenColors constant.numeric
  ["@markup.raw.markdown_inline"] = { fg = "#ae81ff" }, -- tokenColors constant.numeric
  ["@markup.strikethrough"] = { strikethrough = true }, -- tokenColors markup.strikethrough
  ["@markup.strong"] = { bold = true }, -- tokenColors markup.bold
  ["@markup.underline"] = { underline = true }, -- tokenColors markup.underline
  ["@module"] = { fg = "#a6e22e" }, -- tokenColors entity.name.namespace
  ["@none"] = {},
  ["@number"] = { fg = "#ae81ff" }, -- tokenColors constant.numeric
  ["@number.float"] = { fg = "#ae81ff" }, -- tokenColors constant.numeric
  ["@operator"] = { fg = "#f92672" }, -- tokenColors Operator
  ["@property"] = { fg = "#f8f8f2" }, -- tokenColors variable
  ["@property.ini"] = { fg = "#fd971f" }, -- tokenColors variable.parameter
  ["@punctuation.bracket"] = { fg = "#f92672" }, -- tokenColors punctuation
  ["@punctuation.delimiter"] = { fg = "#88846f" }, -- tokenColors comment
  ["@punctuation.special"] = { fg = "#f92672" }, -- tokenColors punctuation
  ["@string"] = { fg = "#e6db74" }, -- tokenColors string
  ["@string.documentation"] = { fg = "#e6db74" }, -- tokenColors string
  ["@string.escape"] = { fg = "#ae81ff" }, -- tokenColors constant.character
  ["@string.regexp"] = { fg = "#fd971f" }, -- tokenColors variable.parameter
  ["@tag"] = { fg = "#f92672" }, -- tokenColors entity.name.tag
  ["@tag.attribute"] = { fg = "#a6e22e", italic = true }, -- tokenColors entity.other.attribute-name
  ["@tag.delimiter"] = { fg = "#ccccc7" }, -- tab.inactiveForeground
  ["@type"] = { fg = "#66d9ef" }, -- tokenColors storage.type
  ["@type.builtin"] = { fg = "#66d9ef", italic = true }, -- tokenColors storage.type
  ["@type.definition"] = { fg = "#66d9ef" }, -- tokenColors storage.type
  ["@type.qualifier"] = { fg = "#f92672" }, -- tokenColors keyword
  ["@type.qualifier.c_sharp"] = { fg = "#fd971f", italic = true }, -- tokenColors variable.parameter
  ["@variable"] = { fg = "#f8f8f2" }, -- tokenColors variable
  ["@variable.builtin"] = { fg = "#ccccc7", italic = true }, -- tab.inactiveForeground
  ["@variable.member"] = { fg = "#f8f8f2" }, -- tokenColors variable
  ["@variable.parameter"] = { fg = "#fd971f", italic = true }, -- tokenColors variable.parameter
  -- Additional highlight groups from NightTasty, adapted with Monokai Classic colors
  Normal = { bg = "#272822", fg = "#f8f8f2" }, -- editor.background, editor.foreground
  NormalFloat = { bg = "#1e1f1c", fg = "#f8f8f2" }, -- editorWidget.background
  NormalNC = { bg = "#272822", fg = "#f8f8f2" }, -- editor.background, editor.foreground
  NormalSB = { bg = "#1e1f1c", fg = "#ccccc7" }, -- sideBar.background, tab.inactiveForeground
  Cursor = { bg = "#f8f8f0", fg = "#272822" }, -- editorCursor.foreground, editor.background
  CursorLine = { bg = "#3e3d32" }, -- editor.lineHighlightBackground
  CursorLineNr = { fg = "#c2c2bf" }, -- editorLineNumber.activeForeground
  LineNr = { fg = "#90908a" }, -- editorLineNumber.foreground
  Visual = { bg = "#878b9180" }, -- editor.selectionBackground
  Pmenu = { bg = "#1e1f1c", fg = "#f8f8f2" }, -- menu.background, editor.foreground
  PmenuSel = { bg = "#75715e", fg = "#f8f8f2" }, -- list.activeSelectionBackground
  StatusLine = { bg = "#414339", fg = "#ccccc7" }, -- statusBar.background, tab.inactiveForeground
  StatusLineNC = { bg = "#414339", fg = "#75715e" }, -- statusBar.background, list.activeSelectionBackground
  TabLine = { bg = "#1e1f1c", fg = "#ccccc7" }, -- editorGroupHeader.tabsBackground, tab.inactiveForeground
  TabLineSel = { bg = "#272822", fg = "#f8f8f2" }, -- editor.background, editor.foreground
  TabLineFill = { bg = "#1e1f1c" }, -- editorGroupHeader.tabsBackground
  DiffAdd = { bg = "#4b661680", fg = "#a6e22e" }, -- diffEditor.insertedTextBackground, tokenColors markup.inserted
  DiffChange = { bg = "#25394b" }, -- NightTasty fallback
  DiffDelete = { bg = "#90274a70", fg = "#f92672" }, -- diffEditor.removedTextBackground, tokenColors markup.deleted
  DiffText = { bg = "#1e476b" }, -- NightTasty fallback
  Search = { bg = "#75715e", bold = true, fg = "#f8f8f2" }, -- peekViewResult.matchHighlightBackground
  IncSearch = { bg = "#ae81ff", bold = true, fg = "#272822" }, -- tokenColors constant.numeric
  Comment = { fg = "#88846f", italic = true }, -- tokenColors comment
  String = { fg = "#e6db74" }, -- tokenColors string
  Number = { fg = "#ae81ff" }, -- tokenColors constant.numeric
  Boolean = { fg = "#ae81ff" }, -- tokenColors constant.language
  Operator = { fg = "#f92672" }, -- tokenColors Operator
  Keyword = { fg = "#f92672", italic = false }, -- tokenColors keyword
  Function = { fg = "#a6e22e" }, -- tokenColors entity.name.function
  Identifier = { fg = "#f8f8f2" }, -- tokenColors variable
  Constant = { fg = "#ae81ff" }, -- tokenColors constant
  PreProc = { fg = "#f92672" }, -- tokenColors PreProc
  Type = { fg = "#66d9ef" }, -- tokenColors storage.type
  Special = { fg = "#ae81ff" }, -- tokenColors constant.numeric
  Error = { fg = "#f44747" }, -- tokenColors invalid
  Todo = { bg = "#75715e", fg = "#e6db74" }, -- list.activeSelectionBackground, tokenColors string
  DiagnosticError = { fg = "#f92672" }, -- terminal.ansiBrightRed
  DiagnosticWarn = { fg = "#e2e22e" }, -- terminal.ansiBrightYellow
  DiagnosticInfo = { fg = "#819aff" }, -- terminal.ansiBrightBlue
  DiagnosticHint = { fg = "#66d9ef" }, -- terminal.ansiBrightCyan
  DiagnosticUnderlineError = { sp = "#f92672", undercurl = true }, -- inputValidation.errorBorder
  DiagnosticUnderlineWarn = { sp = "#e2e22e", undercurl = true }, -- inputValidation.warningBorder
  DiagnosticUnderlineInfo = { sp = "#819aff", undercurl = true }, -- inputValidation.infoBorder
  DiagnosticUnderlineHint = { sp = "#66d9ef", undercurl = true }, -- terminal.ansiBrightCyan
}

local terminal_colors = {
  ["vim.g.terminal_color_0"] = "#333333", -- terminal.ansiBlack
  ["vim.g.terminal_color_1"] = "#c4265e", -- terminal.ansiRed
  ["vim.g.terminal_color_2"] = "#86b42b", -- terminal.ansiGreen
  ["vim.g.terminal_color_3"] = "#b3b42b", -- terminal.ansiYellow
  ["vim.g.terminal_color_4"] = "#6a7ec8", -- terminal.ansiBlue
  ["vim.g.terminal_color_5"] = "#8c6bc8", -- terminal.ansiMagenta
  ["vim.g.terminal_color_6"] = "#56adbc", -- terminal.ansiCyan
  ["vim.g.terminal_color_7"] = "#e3e3dd", -- terminal.ansiWhite
  ["vim.g.terminal_color_8"] = "#666666", -- terminal.ansiBrightBlack
  ["vim.g.terminal_color_9"] = "#f92672", -- terminal.ansiBrightRed
  ["vim.g.terminal_color_10"] = "#a6e22e", -- terminal.ansiBrightGreen
  ["vim.g.terminal_color_11"] = "#e2e22e", -- terminal.ansiBrightYellow
  ["vim.g.terminal_color_12"] = "#819aff", -- terminal.ansiBrightBlue
  ["vim.g.terminal_color_13"] = "#ae81ff", -- terminal.ansiBrightMagenta
  ["vim.g.terminal_color_14"] = "#66d9ef", -- terminal.ansiBrightCyan
  ["vim.g.terminal_color_15"] = "#f8f8f2", -- terminal.ansiBrightWhite
}

-- Apply the colorscheme (example implementation)
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.o.termguicolors = true
vim.g.colors_name = "monokai_classic"

for group, attrs in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, attrs)
end

for _, color in pairs(terminal_colors) do
  for term, value in pairs(color) do
    vim.g[term] = value
  end
end

