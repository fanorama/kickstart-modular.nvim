return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require "null-ls"
    local augrup = vim.api.nvim_create_augroup("LspFormatting", {})
    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.prettierd,
      },
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
