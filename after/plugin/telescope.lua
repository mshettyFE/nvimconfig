local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- fuzz find normal files
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- fuzzy find git files
vim.keymap.set('n', '<leader>ps', function() -- grep for specific string within files
	builtin.grep_string({search = vim.fn.input("Grep > ") });
end)