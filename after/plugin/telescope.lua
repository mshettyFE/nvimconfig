local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- fuzz find normal files
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- fuzzy find git files
vim.keymap.set('n', '<leader>ps', function()
    builtin.live_grep()
end, { desc = 'Telescope live grep' })
