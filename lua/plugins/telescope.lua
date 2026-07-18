return {
    'nvim-telescope/telescope.nvim',
    version = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = "Telescope",
    keys = {
        { '<leader>pf', function() require('telescope.builtin').find_files() end, desc = 'Telescope find files' },
        { '<C-p>', function() require('telescope.builtin').git_files() end, desc = 'Telescope git files' },
        { '<leader>ps', function() require('telescope.builtin').live_grep() end, desc = 'Telescope live grep' },
    },
}
