vim.g.mapleader =" "
vim.keymap.set("n", "<leader>ft", vim.cmd.Ex) -- open file tree

-- allows you to move highlighted sections as one
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") 
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keeps cursor in place when using J
vim.keymap.set("n", "J", "mzJ'z")

-- Key cursor fixed when half paging
vim.keymap.set("n","<C-d>", "<C-d>zz")
vim.keymap.set("n","<C-u>", "<C-u>zz")

-- keep cursor fixed when jumping searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- when copy pasting, keeps copied value in buffer instead of overwritten value
vim.keymap.set("x", "<leader>p" , "\"_dp")

-- copys vim yank buffer to system buffer (ie. you can copy paste out of vim)
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
