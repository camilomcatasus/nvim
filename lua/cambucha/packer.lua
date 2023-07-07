vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		requires = {{'nvim-lua/plenary.nvim'}}
	
		
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use ("folke/tokyonight.nvim")
	use ("rockerBOO/boo-colorscheme-nvim")
	use { "bluz71/vim-moonfly-colors", as = "moonfly" }
	use ("rafamadriz/neon")
	use ("svrana/neosolarized.nvim")
	use({ 'rose-pine/neovim', as = 'rose-pine' })

	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use('NvChad/nvim-colorizer.lua')
	use('sunjon/shade.nvim')
	use('winston0410/cmd-parser.nvim')
	use('winston0410/range-highlight.nvim')
	use('folke/twilight.nvim')
	use('mg979/vim-visual-multi', { branch = 'master' })
--	use ('SidOfc/carbon.nvim')
	use('nvim-tree/nvim-tree.lua')
	use('nvim-tree/nvim-web-devicons')
end)
