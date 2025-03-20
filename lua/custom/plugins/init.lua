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
}
