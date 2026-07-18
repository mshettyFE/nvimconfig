local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").clangd.setup({
  capabilities = capabilities,
})

vim.lsp.enable("julials")

require("mason-lspconfig").setup {
    ensure_installed = { "clangd","rust_analyzer", "jedi_language_server", "gopls", "ols" },
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

-- Create an autocommand that runs when an LSP attaches to a buffer
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local opts = { buffer = event.buf }

    -- Replicating the new Neovim defaults
    vim.keymap.set('n', 'grn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', 'gra', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'grr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', 'gri', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'grt', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', 'gO', vim.lsp.buf.document_symbol, opts)
    
    -- Classic overrides/additions
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('i', '<C-S>', vim.lsp.buf.signature_help, opts)

    -- Diagnostic navigation
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
  end,
})
