return {
  "giusgad/pets.nvim",
  dependencies = { "MunifTanjim/nui.nvim", "giusgad/hologram.nvim" },
  config = function()
    require("pets").setup({
      default_pet = "crab", -- the pet to use for the PetNew command
      default_style = "red", -- the style of the pet to use for the PetNew command
      random = false
    })
  end,
}
