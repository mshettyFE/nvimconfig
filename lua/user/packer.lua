vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

  use { -- fuzzy file finder
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "scottmckendry/cyberdream.nvim" } -- colorscheme
  use { -- language specific syntax highlighting
	  'nvim-treesitter/nvim-treesitter',
	  run = function()
		  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		  ts_update()
	  end,
  }

  use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
  use { -- hot file storage
	  "ThePrimeagen/harpoon",
	  branch = "harpoon2",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }

  use{'mbbill/undotree'} -- lets you view past versions of document easier that git
  use{'tpope/vim-fugitive'} -- git from vim

  use { -- lsp requirements
	  "VonHeikemen/lsp-zero.nvim",
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
 }

 use {
     -- mass find and replace (NO UNDO!!!)
     "nvim-pack/nvim-spectre",
     requires = {
         {'nvim-lua/plenary.nvim'}
     }
 }

 use{'sunjon/shade.nvim'} -- highlight active window

end)
