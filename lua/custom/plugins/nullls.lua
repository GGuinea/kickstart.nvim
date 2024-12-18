return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "mason.nvim",
    "nvimtools/none-ls-extras.nvim",
    "davidmh/cspell.nvim",
  },
  config = function()
    local none_ls = require("null-ls")
    local cspell = require("cspell")

    local cspell_config = {
      find_json = function(cwd)
        return "/Users/kamilzielinski/.config/nvim/lua/custom/plugins/cspell.json"
      end,
    }

    none_ls.setup({
      sources = {
      },
    })
  end,
}
