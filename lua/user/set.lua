vim.opt.nu = true -- turn line numbers on
vim.opt.relativenumber = true -- turn relative line numbers on

-- tabs are 4 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true -- expand tabs to spaces

vim.opt.smartindent = true -- syntax specific indentation

vim.opt.wrap = false -- don't wrap overly long lines

-- turn off unnecessary backups
vim.opt.swapfile = false
vim.opt.backup = false

-- expand length of undos
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- better searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- leave at least 8 lines from bottom of file
vim.opt.scrolloff = 8

-- update frequently
vim.opt.updatetime  = 50
vim.opt.colorcolumn = "80"

-- holding l flows to the next line
vim.opt.whichwrap:append("<,>,[,],h,l")

-- space is mapleader
vim.g.mapleader = " "


