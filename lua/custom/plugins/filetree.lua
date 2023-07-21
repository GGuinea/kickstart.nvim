return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {
      mappings = {
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false
        }
      }

    }
  end,
  vim.keymap.set('n', '<leader>b', '<Cmd>Neotree toggle<CR>'),
  vim.keymap.set('n', '<leader>ff', '<Cmd>Neotree reveal<CR>')
}
