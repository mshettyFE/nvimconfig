local ok, nabla = pcall(require, "nabla")
if not ok then return end

vim.keymap.set("n", "<leader>mn", function() nabla.popup() end,
    { desc = "Nabla math popup at cursor" })
vim.keymap.set("n", "<leader>mt", function() nabla.toggle_virt() end,
    { desc = "Nabla toggle inline math rendering" })
