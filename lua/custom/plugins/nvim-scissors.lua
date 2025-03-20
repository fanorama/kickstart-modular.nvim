return {
  "chrisgrieser/nvim-scissors",
  dependencies = "nvim-telescope/telescope.nvim", -- if using telescope
  opts = {
    snippetDir = vim.fn.stdpath "config" .. "/snippets",
  },
  keys = {
    {
      "<leader>csc",
      function()
        require("scissors").addNewSnippet()
      end,
      desc = "Snippet Add",
      mode = { "n", "x" },
    },
    {
      "<leader>cse",
      function()
        require("scissors").editSnippet()
      end,
      desc = "Snippet Edit",
      mode = { "n" },
    },
  },
}
