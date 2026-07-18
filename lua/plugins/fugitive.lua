return {
    'tpope/vim-fugitive',
    cmd = { "Git", "G", "Gdiffsplit", "Gread", "Gwrite", "Gedit", "Gblame" },
    keys = {
        { "<leader>gs", "<cmd>Git<cr>", desc = "Git status" },
    },
}
