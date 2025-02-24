local Treehouse = {}

Treehouse.palette = {
  dark_bg = "#191919",
  dark_gray = "#262626",
  light_fg = "#e6e6e6",
  comment = "#433626",
  text_comment = "#e6db74",
  orange = "#fd971f",
  yellow = "#e6db74",
  green = "#a6e22e",
  cyan = "#66d9ef",
  blue = "#268bd2",
  purple = "#ae81ff",
  red = "#f92672",
  bright_red = "#ff6e96",
  bright_green = "#a6e22e",
  bright_yellow = "#f4bf75",
  bright_blue = "#81a2be",
  bright_purple = "#c586c0",
  bright_orange = "#fc971f",
}

local function get_colors()
  return {
    bg = Treehouse.palette.dark_bg,
    dark_gray = Treehouse.palette.dark_gray,
    fg = Treehouse.palette.light_fg,
    comment = Treehouse.palette.comment,
    text_comment = Treehouse.palette.text_comment,
    orange = Treehouse.palette.orange,
    yellow = Treehouse.palette.yellow,
    green = Treehouse.palette.green,
    cyan = Treehouse.palette.cyan,
    blue = Treehouse.palette.blue,
    purple = Treehouse.palette.purple,
    red = Treehouse.palette.red,
    bright_red = Treehouse.palette.bright_red,
    bright_green = Treehouse.palette.bright_green,
    bright_yellow = Treehouse.palette.bright_yellow,
    bright_blue = Treehouse.palette.bright_blue,
    bright_purple = Treehouse.palette.bright_purple,
    bright_orange = Treehouse.palette.bright_orange,
  }
end

local function get_groups()
  local colors = get_colors()

  return {
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = colors.dark_gray },
    FloatBorder = { fg = colors.orange, bg = colors.dark_gray },
    FloatTitle = { fg = colors.yellow, bg = colors.dark_gray },
    TelescopePromptNormal = { fg = colors.fg, bg = colors.dark_gray },
    TelescopePromptBorder = { fg = colors.orange, bg = colors.dark_gray },
    TelescopeNormal = { fg = colors.fg, bg = "#1f1f1f" },
    TelescopeBorder = { fg = colors.cyan, bg = "#1f1f1f" },
    NeoTreeFloatBorder = { fg = "#fd971f", bg = "#262626" },         -- Orange border
    NeoTreeFloatTitle = { fg = "#fd971f", bg = "#262626", bold = true }, -- Orange title
    NeoTreeTitleBar = { fg = "#fd971f", bg = "#262626", bold = true }, -- Alternative for title
    Comment = { fg = colors.text_comment, italic = true },
    Constant = { fg = colors.purple },
    String = { fg = colors.yellow, italic = true },
    Function = { fg = colors.green },
    Identifier = { fg = colors.orange },
    Type = { fg = colors.blue },
    Keyword = { fg = colors.red },
    Operator = { fg = colors.cyan },
    ["@property.go"] = { fg = "#e6db74" },
    ["@variable"] = { fg = colors.orange },
    ["@variable.builtin"] = { fg = colors.red },
    ["@variable.member"] = { fg = "#e6db74" },
    ["@variable.member.go"] = { fg = "#e6db74" },
    ["@function"] = { fg = colors.green },
    ["@type"] = { fg = colors.blue },
    ["@type.builtin"] = { fg = colors.cyan },
    Pmenu = { fg = colors.fg, bg = colors.comment },
    PmenuSel = { fg = colors.bg, bg = colors.orange, bold = true },
    LineNr = { fg = colors.comment },
    CursorLineNr = { fg = colors.yellow },
    Search = { fg = colors.bg, bg = colors.orange },
    Visual = { bg = colors.comment },
    DiffAdd = { fg = colors.green, bg = colors.bg },
    DiffDelete = { fg = colors.red, bg = colors.bg },
    DiagnosticError = { fg = colors.red },
    DiagnosticWarn = { fg = colors.yellow },
    DiagnosticInfo = { fg = colors.cyan },
    DiagnosticHint = { fg = colors.green },
    GitSignsAdd = { fg = colors.green },
    GitSignsChange = { fg = colors.orange },
    GitSignsDelete = { fg = colors.red },
  }
end

Treehouse.load = function()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  vim.g.colors_name = "treehouse"
  vim.o.termguicolors = true

  local groups = get_groups()

  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return Treehouse
