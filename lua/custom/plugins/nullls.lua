return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
        local nullLs = require("null-ls")
    require("null-ls").setup({
      sources = {
        nullLs.builtins.formatting.prettier, -- markdown formatting
        nullLs.builtins.code_actions.eslint_d,
        nullLs.builtins.diagnostics.credo.with({
                  method = nullLs.methods.DIAGNOSTICS_ON_SAVE,
        }),
        nullLs.builtins.diagnostics.deno_lint,
        nullLs.builtins.diagnostics.eslint_d,
        nullLs.builtins.diagnostics.gitlint,
        nullLs.builtins.diagnostics.golangci_lint,
      }
    })
  end
}
