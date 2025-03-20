return {
  "ThePrimeagen/harpoon",
  event = "VeryLazy",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require "harpoon"
    local extensions = require "harpoon.extensions"

    harpoon:setup {
      settings = {
        save_on_toggle = true,
      },
    }

    harpoon:extend(extensions.builtins.navigate_with_number())
  end,
}
