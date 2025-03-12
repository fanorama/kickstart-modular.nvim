return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    -- list of neotest adapters
    "nvim-neotest/neotest-jest",
  },
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require("neotest").setup {
      adapters = {
        require "neotest-jest" {
          jestCommand = "npm test --",
          jestConfigFile = "custom.jest.config.ts",
          env = { CI = true },
          cwd = function(path)
            return vim.fn.getcwd()
          end,
        },
      },
    }
  end,
}
