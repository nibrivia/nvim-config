vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('tpope/vim-commentary')
  use {
    'notjedi/nvim-rooter.lua',
    config = function() require'nvim-rooter'.setup() end
}

   use('mbbill/undotree')
   use {
	   'VonHeikemen/lsp-zero.nvim',
	   branch = 'v3.x',
	   requires = {
		   --- Uncomment these if you want to manage LSP servers from neovim
		   {'williamboman/mason.nvim'},
		   {'williamboman/mason-lspconfig.nvim'},

		   -- LSP Support
		   {'neovim/nvim-lspconfig'},
		   -- Autocompletion
		   {'hrsh7th/nvim-cmp'},
		   {'hrsh7th/cmp-nvim-lsp'},
		   {'L3MON4D3/LuaSnip'},
	   }
   }

   use({
	 "Pocco81/auto-save.nvim",
	 config = function()
		  require("auto-save").setup {
			 -- your config goes here
			 -- or just leave it empty :)
		  }
	 end,
 })
end)

