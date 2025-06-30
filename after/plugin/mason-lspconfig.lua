local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").clangd.setup({
  capabilities = capabilities,
})

require("mason-lspconfig").setup {
    ensure_installed = { "clangd","rust_analyzer", "jedi_language_server", "gopls" },
}
