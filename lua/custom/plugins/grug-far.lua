return {
  "MagicDuck/grug-far.nvim",
  opts = {},
  keys = function()
    local grug_far = require "grug-far"
    local keys = {
      {
        "<leader>rp",
        function()
          grug_far.open { prefills = { paths = vim.fn.getcwd() } }
        end,
        desc = "Search current project",
        mode = { "n", "x" },
      },
      {
        "<leader>rw",
        function()
          grug_far.open { prefills = { search = vim.fn.expand "<cword>", paths = vim.fn.getcwd() } }
        end,
        desc = "Replace word under cursor",
        mode = { "n", "x" },
      },
      {
        "<leader>ro",
        function()
          grug_far.open()
        end,
        desc = "Search & Replace",
        mode = { "n", "x" },
      },
    }

    return keys
  end,
}
