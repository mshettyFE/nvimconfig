local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  mapping = {
    ['<Tab>'] = cmp.mapping.confirm({select = true  }),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<Up>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
    ['<Down>'] = cmp.mapping.select_next_item({behavior = 'select'}),
    ['<C-p>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item({behavior = 'insert'})
      else
        cmp.complete()
      end
    end),
    ['<C-n>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_next_item({behavior = 'insert'})
      else
        cmp.complete()
      end
    end),
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})


local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    
    -- see :help lsp-zero-keybindings
    -- to learn the available actions

    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)                -- jump to defintion
    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)               -- jump to declaration
    vim.keymap.set("n", "gt", function() vim.lsp.buf.type_definition() end, opts)           -- jump to type type_definition
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)                      -- Get hover text
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts) -- get workspace_symbol
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)     -- open floating text
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)              --goto next
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)              -- go to previous
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)      -- perform code action
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)       -- list references
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)           -- rename
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)         -- get signature_help
    vim.keymap.set("n", "Fm", function() vim.lsp.buf.format() end, opts)                    -- format text

    --lsp_zero.default_keymaps({buffer = bufnr})
end)

require("mason").setup()


require("mason-lspconfig").setup({
    ensure_installed = {
        "ast_grep",
        "autotools_ls",
        "bashls",
        "clangd",
        "cmake",
        "gopls",
        "jsonls",
        "lua_ls",
        "marksman",
        "ruff_lsp",
        "rust_analyzer",
        "sqlls",
        "typos_lsp",
        "taplo",
        "yamlls"
    },
    handlers = {
        function(ast_grep)
            require("lspconfig")[ast_grep].setup({})
        end,
        function(autotools_ls)
            require("lspconfig")[autotools_ls].setup({})
        end,
        function(bashls)
            require("lspconfig")[bashls].setup({})
        end,
        function(clangd)
            require("lspconfig")[clangd].setup({})
        end,
        function(cmake)
            require("lspconfig")[cmake].setup({})
        end,
        function(gopls)
            require("lspconfig")[gopls].setup({})
        end,
        function(jsonls)
            require("lspconfig")[jsonls].setup({})
        end,
        function(lua_ls)
            require("lspconfig")[lua_ls].setup({})
        end,
        function(marksman)
            require("lspconfig")[marksman].setup({})
        end,
        function(ruff_lsp)
            require("lspconfig")[ruff_lsp].setup({})
        end,
        function(rust_analyzer)
            require("lspconfig")[rust_analyzer].setup({})
        end,
        function (sqlls)
            require("lspconfig")[sqlls].setup({})
        end,
        function (typos_lsp)
            require("lspconfig")[typos_lsp].setup({})
        end,
        function (taplo)
            require("lspconfig")[taplo].setup({})
        end,
        function(yamlls)
            require("lspconfig")[yamlls].setup({})
        end,
    }
})
