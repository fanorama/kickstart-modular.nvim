return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
    "jay-babu/mason-null-ls.nvim",
  },
  config = function()
    local augrup = vim.api.nvim_create_augroup("LspFormatting", {})

    require("mason-null-ls").setup {
      ensure_installed = {
        "ruff",
        "prettier",
        "shfmt",
        "djlint",
      },
      automatic_installation = true,
    }

    local null_ls = require "null-ls"
    local sources = {
      require("none-ls.formatting.ruff").with { extra_args = { "--extend-select", "I" } },
      require "none-ls.formatting.ruff_format",
      null_ls.builtins.formatting.prettier.with { filetypes = { "json", "yaml", "markdown" } },
      null_ls.builtins.formatting.shfmt.with { args = { "-i", "4" } },
      null_ls.builtins.formatting.djlint.with { filetypes = { "htmldjango" }, extra_args = { "--profile", "django", "--indent", "4", "--reformat" } },
    }
    null_ls.setup {
      sources = sources,
      on_attach = function(client, bufnr)
        if client.supports_method "textDocument/formatting" then
          vim.api.nvim_clear_autocmds {
            group = augrup,
            buffer = bufnr,
          }
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augrup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format { bufnr = bufnr }
            end,
          })
        end
      end,
    }
  end,
}
