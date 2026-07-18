vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 1
vim.g.mkdp_theme = "dark"
vim.g.mkdp_filetypes = { "markdown" }

vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>",
    { desc = "Markdown preview toggle" })
vim.keymap.set("n", "<leader>ms", "<cmd>MarkdownPreviewStop<cr>",
    { desc = "Markdown preview stop" })
