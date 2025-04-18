---@diagnostic disable: missing-fields
return {
  "folke/noice.nvim",
  lazy = false,
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("noice").setup {
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
        },
        progress = {
          enabled = false,
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
        command_palette = false, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = true, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
      routes = {
        {
          view = "notify",
          filter = { event = "msg_showmode" },
        },
      },
      cmdline = {
        view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
        format = {
          cmdline = { pattern = "^:", icon = "❯", lang = "vim", title = "" },
        },
      },
      views = {
        cmdline_popup = {
          size = {
            height = "auto",
            width = "30%",
          },
          position = {
            row = "50%",
            col = "50%",
          },
          border = {
            style = "single",
          },
        },
      },
    }
  end,
}
