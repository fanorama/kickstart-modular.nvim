return {
  "gbprod/yanky.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    { "p", "<Plug>(YankyPutAfter)", desc = "YankyPutAfter", mode = { "n", "x" } },
    { "P", "<Plug>(YankyPutBefore)", desc = "YankyPutBefore", mode = { "n", "x" } },
    { "gp", "<Plug>(YankyGPutAfter)", desc = "YankyGPutAfter", mode = { "n", "x" } },
    { "gP", "<Plug>(YankyGPutBefore)", desc = "YankyGPutBefore", mode = { "n", "x" } },

    { "]p", "<Plug>(YankyPutIndentAfterLinewise)", desc = "YankyPutIndentAfterLinewise", mode = { "n" } },
    { "[p", "<Plug>(YankyPutIndentBeforeLinewise)", desc = "YankyPutIndentBeforeLinewise", mode = { "n" } },
    { "]P", "<Plug>(YankyPutIndentAfterLinewise)", desc = "YankyPutIndentAfterLinewise", mode = { "n" } },
    { "[P", "<Plug>(YankyPutIndentBeforeLinewise)", desc = "YankyPutIndentBeforeLinewise", mode = { "n" } },

    { ">p", "<Plug>(YankyPutIndentAfterShiftRight)", desc = "YankyPutIndentAfterShiftRight", mode = { "n" } },
    { "<p", "<Plug>(YankyPutIndentAfterShiftLeft)", desc = "YankyPutIndentAfterShiftLeft", mode = { "n" } },
    { ">P", "<Plug>(YankyPutIndentBeforeShiftRight)", desc = "YankyPutIndentBeforeShiftRight", mode = { "n" } },
    { "<P", "<Plug>(YankyPutIndentBeforeShiftLeft)", desc = "YankyPutIndentBeforeShiftLeft", mode = { "n" } },

    { "=p", "<Plug>(YankyPutAfterFilter)", desc = "YankyPutAfterFilter", mode = { "n" } },
    { "=P", "<Plug>(YankyPutBeforeFilter)", desc = "YankyPutBeforeFilter", mode = { "n" } },
  },
  {
    "smjonas/inc-rename.nvim",
    event = "VeryLazy",
    config = function()
      require("inc_rename").setup {}
    end,
    keys = {
      { "<leader>cr", ":IncRename ", desc = "Rename Multiple", mode = { "n", "v" } },
    },
  },
}
