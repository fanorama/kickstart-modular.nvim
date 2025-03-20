return {
  "dmmulroy/tsc.nvim",
  ft = { "typescript", "typescriptreact" },
  event = "BufReadPost",
  config = function()
    require("tsc").setup {
      use_trouble_qflist = true,
    }
  end,
}
