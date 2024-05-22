local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- to learn how to use mason.nvim
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        "clangd", --c++
        "cmake", --cmake
        "html", -- html
        "lua_ls", -- lua
        "marksman", -- markdown
        "ruff_lsp", -- python
        "rust_analyzer", -- rust
        "sqlls", -- sql:
        "tsserver", -- typescript
        "yamlls" --yaml
    },
    handlers = {},
})
