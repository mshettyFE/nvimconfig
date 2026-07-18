return {
    'nvim-treesitter/nvim-treesitter',
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSUpdate", "TSUpdateSync", "TSBufEnable", "TSModuleInfo" },
    build = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
    config = function()
        -- Compatibility shim: archived nvim-treesitter `master` passes the now-removed
        -- `--no-bindings` flag to tree-sitter CLI >= 0.25. Override the args before
        -- the first install runs.
        require("nvim-treesitter.install").ts_generate_args = {
            "generate", "--abi", vim.treesitter.language_version,
        }

        require('nvim-treesitter.configs').setup {
            -- A list of parser names, or "all"
            ensure_installed = { "c", "lua", "cpp", "python", "javascript", "vim", "vimdoc", "query", "rust", "html", "css", "markdown", "markdown_inline", "latex" },

            -- Install parsers asynchronously so they don't block the editor
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            auto_install = true,

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        }
    end,
}
