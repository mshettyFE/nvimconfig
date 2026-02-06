local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").clangd.setup({
  capabilities = capabilities,
})

require("mason-lspconfig").setup {
    ensure_installed = { "clangd","rust_analyzer", "jedi_language_server", "gopls" },
}

vim.api.nvim_create_autocmd("CursorHold", {
  buffer = bufnr,
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "CursorMoved", "CursorMovedI", "BufHidden", "InsertCharPre" },
      scope = 'line',
    }
    vim.diagnostic.open_float(nil, opts)
  end
})
