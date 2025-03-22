return {
  {
    "rcarriga/nvim-notify",
    config = function()
      local notify = require "notify"
      ---@diagnostic disable-next-line: missing-fields
      notify.setup {
        stages = "slide",
        fps = 60,
        render = "compact",
        max_width = 60,
        timeout = 4000,
      }

      vim.notify = notify
    end,
  },
  -- Snipe
  {
    "leath-dub/snipe.nvim",
    keys = {
      {
        "<Tab>",
        function()
          require("snipe").open_buffer_menu()
        end,
        desc = "Open Snipe buffer menu",
        mode = { "n" },
      },
    },
    opts = {
      ui = {
        position = "center",
      },
      hints = {
        dictionary = "12345asdfgh",
      },
      navigate = {
        cancel_snipe = "<Tab>",
      },
    },
  },
  -- lazydocker
  {
    "crnvl96/lazydocker.nvim",
    event = "VeryLazy",
    opts = {}, -- automatically calls `require("lazydocker").setup()`
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
  },
  {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
}
