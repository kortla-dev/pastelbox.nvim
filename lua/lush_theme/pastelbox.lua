--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

-- local colors = require("palette")
-- local colors = require("lua.palette")
local lush = require("lush")


local scheme = require("scheme")

local colors = scheme.palette
local display = scheme.display
local link = scheme.link

local cmp_itm_knd_dsply = display.rev -- .none

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups

    PastelboxBg0 { bg = colors.gray0 },
    PastelboxBg1 { bg = colors.gray1 },
    PastelboxBg2 { bg = colors.gray2 },
    PastelboxBg3 { bg = colors.gray3 },

    PastelboxFg0 { fg = colors.gray5 },

    PastelboxPeach { fg = colors.peach },
    PastelboxGreen { fg = colors.green },
    PastelboxYellow { fg = colors.yellow },
    PastelboxRed { fg = colors.red },
    PastelboxGray { fg = colors.gray },
    PastelboxLightGray { fg = colors.light_gray },
    PastelboxOrange { fg = colors.orange },
    PastelboxBlue { fg = colors.blue },
    PastelboxLightBlue { fg = colors.light_blue },
    PastelboxPurple { fg = colors.purple },
    PastelboxAqua { fg = colors.aqua },

    PastelboxGreenUnderline {
      PastelboxGreen,
      cterm = display.ul, gui = display.ul,
    },
    PastelboxYellowUnderline {
      PastelboxYellow,
      cterm = display.ul, gui = display.ul,
    },
    PastelboxRedUnderline {
      PastelboxRed,
      cterm = display.ul, gui = display.ul,
    },
    PastelboxBlueUnderline {
      PastelboxBlue,
      cterm = display.ul, gui = display.ul,
    },
    PastelboxPurpleUnderline {
      PastelboxPurple,
      cterm = display.ul, gui = display.ul,
    },
    PastelboxAquaUnderline {
      PastelboxAqua,
      cterm = display.ul, gui = display.ul,
    },

    PastelboxGreenSign { fg = colors.green, bg = colors.gray2 },
    PastelboxYellowSign { fg = colors.yellow, bg = colors.gray2 },
    PastelboxRedSign { fg = colors.red, bg = colors.gray2 },
    PastelboxBlueSign { fg = colors.blue, bg = colors.gray2 },
    PastelboxAquaSign { fg = colors.aqua, bg = colors.gray2 },

    --
    ColorColumn { bg = colors.gray2 },               -- Columns set with 'colorcolumn'
    Conceal { PastelboxBlue },                       -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor { fg = colors.black, bg = colors.white }, -- Character under the cursor
    IncSearch {
      cterm = display.rev, gui = display.rev,
      fg = colors.orange, bg = colors.gray0,
    },                            -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch { IncSearch },      -- Highlighting a search pattern under the cursor (see 'hlsearch')
    lCursor { Cursor },           -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM { Cursor },          -- Like Cursor, but used when in IME mode |CursorIM|
    CursorLine { PastelboxBg2 },  -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn { CursorLine },  -- Screen-column at the cursor, when 'cursorcolumn' is set.
    Directory { PastelboxGreen }, -- Directory names (and other special names in listings)
    Added { PastelboxGreen },
    Changed { PastelboxYellow },
    Removed { PastelboxRed },
    DiffAdd { cterm = display.rev, gui = display.rev, bg = colors.gray0, Added },      -- Diff mode: Added line |diff.txt|
    DiffChange { cterm = display.rev, gui = display.rev, bg = colors.gray0, Added },   -- Diff mode: Changed line |diff.txt|
    DiffDelete { cterm = display.rev, gui = display.rev, bg = colors.gray0, Removed }, -- Diff mode: Deleted line |diff.txt|
    DiffText { cterm = display.rev, gui = display.rev, bg = colors.gray0, Changed },   -- Diff mode: Changed text within a changed line |diff.txt|
    NonText { fg = colors.gray4 },                                                     -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    EndOfBuffer { NonText },                                                           -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor { cterm = display.rev, gui = display.rev },                             -- Cursor in a focused terminal
    TermCursorNC { link = link.clear },                                                -- Cursor in an unfocused terminal
    ErrorMsg { fg = colors.gray0, bg = colors.red },                                   -- Error messages on the command line
    Winseparator { fg = colors.gray3, bg = colors.gray0 },                             -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    VertSplit { Winseparator },                                                        -- Column separating vertically split windows
    Folded { fg = colors.gray5, bg = colors.gray2 },                                   -- Line used for closed folds
    FoldColumn { Folded },                                                             -- 'foldcolumn'
    SignColumn { PastelboxBg2 },                                                       -- Column where |signs| are displayed

    Search {
      cterm = display.rev, gui = display.rev,
      fg = colors.yellow, bg = colors.black
    },                                                      -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    Substitute { Search },                                  -- |:substitute| replacement text highlighting
    LineNr { PastelboxFg0 },                                -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrAbove { LineNr },                                 -- Line number for when the 'relativenumber' option is set, above the cursor line
    LineNrBelow { LineNr },                                 -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr { fg = colors.yellow, bg = colors.gray2 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    CursorLineFold { FoldColumn },                          -- Like FoldColumn when 'cursorline' is set for the cursor line
    CursorLineSign { SignColumn },                          -- Like SignColumn when 'cursorline' is set for the cursor line
    -- MatchParen     { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg { PastelboxYellow },                            -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea { link = link.clear },                          -- Area for messages and cmdline
    StatusLine { PastelboxBg2 },                            -- Status line of current window
    MsgSeparator { StatusLine },                            -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg { PastelboxYellow },                            -- |more-prompt|
    Title { PastelboxGreen },                               -- Titles for output from ":set all", ":autocmd" etc.
    Normal { fg = colors.peach, bg = colors.gray0 },        -- Normal text
    NormalFloat { fg = colors.peach, bg = colors.gray2 },   -- Normal text in floating windows.
    FloatBorder { NormalFloat },                            -- Border of floating windows.
    FloatTitle { Title },                                   -- Title of floating windows.
    NormalNC { Normal },                                    -- normal text in non-current windows
    Pmenu { fg = colors.peach, bg = colors.gray2 },         -- Popup menu: Normal item.
    PmenuSel { fg = colors.gray2, bg = colors.light_gray }, -- Popup menu: Selected item.
    PmenuKind { Pmenu },                                    -- Popup menu: Normal item "kind"
    PmenuKindSel { PmenuSel },                              -- Popup menu: Selected item "kind"
    PmenuExtra { Pmenu },                                   -- Popup menu: Normal item "extra text"
    PmenuExtraSel { PmenuSel },                             -- Popup menu: Selected item "extra text"
    PmenuSbar { bg = colors.gray3 },                        -- Popup menu: Scrollbar.
    PmenuThumb { bg = colors.gray5 },                       -- Popup menu: Thumb of the scrollbar.
    Question { PastelboxOrange },                           -- |hit-enter| prompt and yes/no questions
    QuickFixLine { PastelboxPurple },                       -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

    SpecialKey { PastelboxGray },                           -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad { PastelboxRedUnderline },                     -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap { PastelboxBlueUnderline },                    -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal { PastelboxAquaUnderline },                  -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare { PastelboxPurpleUnderline },                 -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLineNC {
      cterm = display.rev, gui = display.rev,
      fg = colors.gray2, bg = colors.gray,
    },                                                    -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLineFill { fg = colors.gray5, bg = colors.gray2 }, -- Tab pages line, where there are no labels
    TabLine { TabLineFill },                              -- Tab pages line, not active tab page label
    --
    TabLineSel { fg = colors.green, bg = colors.gray2 },  -- Tab pages line, active tab page label
    Visual { bg = colors.gray6 },                         -- Visual mode selection
    VisualNOS { Visual },                                 -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg { PastelboxYellow },                       -- Warning messages
    Whitespace { fg = colors.gray3 },                     -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu { fg = colors.blue, bg = colors.gray3 },     -- Current match in 'wildmenu' completion
    WinBar { fg = colors.gray, bg = colors.gray0 },       -- Window bar of current window
    WinBarNC { fg = colors.gray7, bg = colors.gray2 },    -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment { PastelboxGray },                           -- Any comment

    Constant { PastelboxPurple },                        -- (*) Any constant
    String { PastelboxGreen },                           --   A string constant: "this is a string"
    Character { PastelboxLightGray },                    --   A character constant: 'c', '\n'
    Number { PastelboxLightGray },                       --   A number constant: 234, 0xff
    Boolean { Constant },                                --   A boolean constant: TRUE, false
    Float { PastelboxLightGray },                        --   A floating point constant: 2.3e10

    Identifier { PastelboxBlue },                        -- (*) Any variable name
    Function { PastelboxGreen },                         --   Function name (also: methods for classes)

    Statement { PastelboxOrange },                       -- (*) Any statement
    Conditional { PastelboxYellow },                     --   if, then, else, endif, switch, etc.
    Repeat { PastelboxRed },                             --   for, do, while, etc.
    Label { PastelboxYellow },                           --   case, default, etc.
    Operator { PastelboxOrange },                        --   "sizeof", "+", "*", etc.
    Keyword { PastelboxRed },                            --   any other keyword
    Exception { PastelboxRed },                          --   try, catch, throw

    PreProc { PastelboxLightGray },                      -- (*) Generic Preprocessor
    Include { PreProc },                                 --   Preprocessor #include
    Define { PreProc },                                  --   Preprocessor #define
    Macro { PreProc },                                   --   Same as Define
    PreCondit { PreProc },                               --   Preprocessor #if, #else, #endif, etc.

    Type { PastelboxLightBlue },                         -- (*) int, long, char, etc.
    StorageClass { Type },                               --   static, register, volatile, etc.
    Structure { Type },                                  --   struct, union, enum, etc.
    Typedef { Type },                                    --   A typedef

    Special { PastelboxGray },                           -- (*) Any special symbol
    SpecialChar { Special },                             --   Special character in a constant#928374
    Tag { Special },                                     --   You can use CTRL-] on this
    Delimiter { PastelboxOrange },                       --   Character that needs attention
    SpecialComment { PastelboxOrange },                  --   Special things inside a comment (e.g. '\n')
    Debug { Special },                                   --   Debugging statements
    Underlined { cterm = display.ul, gui = display.ul }, -- Text that stands out, HTML links
    Ignore { Normal },                                   -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error { ErrorMsg },                                  -- Any erroneous construct
    Todo { fg = colors.gray0, bg = colors.yellow },      -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    LspReferenceText { PastelboxYellow },   -- Used for highlighting "text" references
    LspReferenceRead { PastelboxYellow },   -- Used for highlighting "read" references
    LspReferenceWrite { PastelboxOrange },  -- Used for highlighting "write" references
    LspCodeLens { PastelboxGray },          -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    LspCodeLensSeparator { PastelboxGray }, -- Used to color the seperator between two or more code lens.
    LspSignatureActiveParameter { Search }, -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError { PastelboxRed },                     -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn { PastelboxYellow },                   -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo { PastelboxBlue },                     -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint { PastelboxAqua },                     -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk { PastelboxGreen },                      -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError { DiagnosticError },       -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn { DiagnosticWarn },         -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo { DiagnosticInfo },         -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint { DiagnosticHint },         -- Used for "Hint" diagnostic virtual text.
    DiagnosticVirtualTextOk { DiagnosticOk },             -- Used for "Ok" diagnostic virtual text.
    DiagnosticUnderlineError { PastelboxRedUnderline },   -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn { PastelboxYellowUnderline }, -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo { PastelboxBlueUnderline },   -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint { PastelboxAquaUnderline },   -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineOk { PastelboxGreenUnderline },    -- Used to underline "Ok" diagnostics.
    DiagnosticFloatingError { DiagnosticError },          -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    DiagnosticFloatingWarn { DiagnosticWarn },            -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo { DiagnosticInfo },            -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint { DiagnosticHint },            -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticFloatingOk { DiagnosticOk },                -- Used to color "Ok" diagnostic messages in diagnostics float.
    DiagnosticSignError { PastelboxRedSign },             -- Used for "Error" signs in sign column.
    DiagnosticSignWarn { PastelboxYellowSign },           -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo { PastelboxBlueSign },             -- Used for "Info" signs in sign column.
    DiagnosticSignHint { PastelboxAquaSign },             -- Used for "Hint" signs in sign column.
    DiagnosticSignOk { PastelboxGreenSign },              -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    sym("@text.literal") { String },       -- Comment
    sym("@text.reference") { Constant },   -- Identifier
    sym("@text.title") { Title },          -- Title
    sym("@text.uri") { Underlined },       -- Underlined
    sym("@text.underline") { Underlined }, -- Underlined
    sym("@text.todo") { Todo },            -- Todo
    sym("@comment") { Comment },           -- Comment
    sym("@punctuation") { Delimiter },     -- Delimiter
    sym("@punctuation.bracket") { PastelboxGray },
    sym("@punctuation.delimiter") { PastelboxOrange },
    sym("@punctuation.special") { PastelboxOrange },
    sym("@constant") { Constant },                -- Constant
    sym("@constant.builtin") { PastelboxAqua },   -- Special
    sym("@constant.macro") { Constant },          -- Define
    sym("@define") { Define },                    -- Define
    sym("@macro") { Macro },                      -- Macro
    sym("@module") { PastelboxPeach },
    sym("@string") { String },                    -- String
    sym("@string.escape") { PastelboxOrange },    -- SpecialChar
    sym("@string.special") { SpecialChar },       -- SpecialChar
    sym("@character") { Character },              -- Character
    sym("@character.special") { SpecialChar },    -- SpecialChar
    sym("@number") { Number },                    -- Number
    sym("@boolean") { Boolean },                  -- Boolean
    sym("@float") { Float },                      -- Float
    sym("@function") { Function },                -- Function
    sym("@function.builtin") { Function },        -- Special
    sym("@function.macro") { Function },          -- Macro
    sym("@parameter") { Identifier },             -- Identifier
    sym("@markup.link") { Underlined },
    sym("@method") { Function },                  -- Function
    sym("@field") { Identifier },                 -- Identifier
    sym("@property") { Identifier },              -- Identifier
    sym("@constructor") { PastelboxGray },        -- Special
    sym("@conditional") { Conditional },          -- Conditional
    sym("@repeat") { Repeat },                    -- Repeat
    sym("@label") { Label },                      -- Label
    sym("@operator") { Operator },                -- Operator
    sym("@keyword") { Keyword },                  -- Keyword
    sym("@keyword.conditional") { Conditional },  --
    sym("@exception") { Exception },              -- Exception
    sym("@variable") { PastelboxPeach },          -- Identifier
    sym("@variable.builtin") { PastelboxGray },   --
    sym("@variable.member") { PastelboxBlue },    --
    sym("@variable.parameter") { PastelboxBlue }, --
    sym("@type") { Type },                        -- Type
    sym("@type.builtin") { PastelboxYellow },     --
    sym("@type.definition") { Typedef },          -- Typedef
    sym("@storageclass") { StorageClass },        -- StorageClass
    sym("@structure") { Structure },              -- Structure
    sym("@namespace") { PastelboxPeach },         -- Identifier
    sym("@include") { Include },                  -- Include
    sym("@preproc") { PreProc },                  -- PreProc
    sym("@debug") { Debug },                      -- Debug
    sym("@tag") { Tag },                          -- Tag

    -- Lazy.nvim groups

    LazyH1 { IncSearch },
    LazyH2 { link = link.clear },
    LazyDir { Underlined },
    LazyUrl { Underlined },
    LazyBold { cterm = display.bld, gui = display.bld },
    LazyInfo { PastelboxBlue },
    LazyProp { Conceal },
    LazyError { DiagnosticError },
    LazyLocal { PastelboxGreen },
    LazyValue { String },
    LazyButton { CursorLine },
    LazyCommit { PastelboxGray },
    LazyDimmed { Conceal },
    LazyItalic { cterm = display.none, gui = display.none },
    LazyNoCond { DiagnosticWarn },
    LazyNormal { NormalFloat },
    LazyComment { PastelboxGray },
    LazySpecial { PastelboxOrange },
    LazyWarning { DiagnosticWarn },
    LazyBackdrop { link = link.clear },
    LazyReasonFt { Character },
    LazyReasonTask { PastelboxPurple },
    LazyReasonCmd { Operator },
    LazyCommitType { PastelboxGreen },
    LazyReasonKeys { PastelboxRed },
    LazyTaskOutput { MsgArea },
    LazyCommitIssue { PastelboxPurple },
    LazyCommitScope { cterm = display.none, gui = display.none },
    LazyReasonEvent { PastelboxPurple },
    LazyReasonStart { PastelboxBlue },
    LazyButtonActive { Visual },
    LazyProgressDone { Constant },
    LazyProgressTodo { LineNr },
    LazyReasonImport { Identifier },
    LazyReasonPlugin { PastelboxOrange },
    LazyReasonSource { PastelboxPurple },
    LazyReasonRequire { PastelboxBlue },
    LazyReasonRuntime { Macro },

    -- Telescope groups

    TelescopeNormal { fg = colors.peach, bg = colors.gray1 },
    TelescopeBorder { TelescopeNormal },
    TelescopeMatching { PastelboxBlue },
    TelescopeMultiIcon { PastelboxBlue },
    TelescopeSelection { fg = colors.orange, bg = colors.gray3 },
    TelescopeSelectionCaret { PastelboxRed },
    TelescopeMultiSelection { PastelboxGray },

    TelescopePromptPrefix { PastelboxRed },
    TelescopePromptCounter { NonText },
    TelescopePromptNormal { PastelboxBg3 },
    TelescopePromptBorder { fg = colors.gray3, bg = colors.gray3 },
    TelescopePromptTitle { fg = colors.peach, bg = colors.gray3 },

    TelescopePreviewNormal { PastelboxBg1 },
    TelescopePreviewBorder { fg = colors.gray1, bg = colors.gray1 },
    TelescopePreviewTitle { fg = colors.peach, bg = colors.gray1 },

    TelescopeResultsNormal { PastelboxBg1 },
    TelescopeResultsBorder { fg = colors.gray1, bg = colors.gray1 },
    TelescopeResultsTitle { fg = colors.peach, bg = colors.gray1 },

    LuaLineDiffAdd { PastelboxGreen },
    LuaLineDiffChange { PastelboxYellow },
    LuaLineDiffDelete { PastelboxRed },


    OilDir { Directory },
    OilDirIcon { OilDir },
    OilSocket { Keyword },
    OilLinkTarget { Comment },
    OilCreate { DiagnosticInfo },
    OilDelete { DiagnosticError },
    OilMove { DiagnosticWarn },
    OilCopy { DiagnosticHint },
    OilChange { Special },
    OilRestore { OilCreate },
    OilPurge { OilDelete },
    OilTrash { OilDelete },
    OilTrashSourcePath { Comment },

    LspInfoTitle { PastelboxOrange },
    LspInfoFileType { PastelboxYellow },
    LspInfoTip { Comment },
    LspInfoList { PastelboxGreen },
    LspInfoBorder { PastelboxYellow },


    CmpItemAbbr { PastelboxLightGray },
    CmpItemAbbrDefault { PastelboxPeach },
    CmpItemAbbrDeprecated { gui = "strikethrough", PastelboxGray },
    CmpItemAbbrDeprecatedDefault { PastelboxGray },
    CmpItemAbbrMatch { PastelboxLightBlue },
    CmpItemAbbrMatchDefault { CmpItemAbbrDefault },
    CmpItemAbbrMatchFuzzy { PastelboxLightBlue },
    CmpItemAbbrMatchFuzzyDefault { CmpItemAbbrDefault },
    CmpItemKindClass { gui = cmp_itm_knd_dsply, PastelboxYellow },
    CmpItemKindColor { gui = cmp_itm_knd_dsply, PastelboxPurple },
    CmpItemKindConstant { gui = cmp_itm_knd_dsply, PastelboxOrange },
    CmpItemKindConstructor { gui = cmp_itm_knd_dsply, PastelboxYellow },
    CmpItemKindEnum { gui = cmp_itm_knd_dsply, PastelboxPurple },
    CmpItemKindEnumMember { gui = cmp_itm_knd_dsply, PastelboxAqua },
    CmpItemKindEvent { gui = cmp_itm_knd_dsply, PastelboxPurple },
    CmpItemKindField { gui = cmp_itm_knd_dsply, PastelboxBlue },
    CmpItemKindFile { gui = cmp_itm_knd_dsply, PastelboxBlue },
    CmpItemKindFolder { gui = cmp_itm_knd_dsply, PastelboxBlue },
    CmpItemKindFunction { gui = cmp_itm_knd_dsply, PastelboxGreen },
    CmpItemKindInterface { gui = cmp_itm_knd_dsply, PastelboxBlue },
    CmpItemKindKeyword { gui = cmp_itm_knd_dsply, PastelboxPeach },
    CmpItemKindMethod { gui = cmp_itm_knd_dsply, CmpItemKindFunction },
    CmpItemKindModule { gui = cmp_itm_knd_dsply, PastelboxBlue },
    CmpItemKindOperator { gui = cmp_itm_knd_dsply, PastelboxYellow },
    CmpItemKindProperty { gui = cmp_itm_knd_dsply, PastelboxBlue },
    CmpItemKindReference { gui = cmp_itm_knd_dsply, PastelboxPurple },
    CmpItemKindSnippet { gui = cmp_itm_knd_dsply, PastelboxGreen },
    CmpItemKindStruct { gui = cmp_itm_knd_dsply, PastelboxLightBlue },
    CmpItemKindText { gui = cmp_itm_knd_dsply, PastelboxPeach },
    CmpItemKindTypeParameter { gui = cmp_itm_knd_dsply, PastelboxYellow },
    CmpItemKindUnit { gui = cmp_itm_knd_dsply, PastelboxBlue },
    CmpItemKindValue { gui = cmp_itm_knd_dsply, PastelboxOrange },
    CmpItemKindVariable { gui = cmp_itm_knd_dsply, PastelboxBlue },
    CmpItemMenu { PastelboxLightGray },
    CmpItemMenuDefault { CmpItemAbbrDefault },
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
