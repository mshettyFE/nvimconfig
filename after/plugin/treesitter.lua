-- Compatibility shim: archived nvim-treesitter `master` passes the now-removed
-- `--no-bindings` flag to tree-sitter CLI >= 0.25. Override the args before
-- the first install runs.
require("nvim-treesitter.install").ts_generate_args = {
  "generate", "--abi", vim.treesitter.language_version,
}

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua","cpp","python","javascript", "vim", "vimdoc", "query","rust", "html","css","markdown","markdown_inline","latex" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
