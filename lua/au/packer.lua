-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'


	use {
		  'nvim-telescope/telescope.nvim', tag = '0.1.8',
		  requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
        'nvim-treesitter/nvim-treesitter',
        run=':TSUpdate'
    }

	use 'folke/tokyonight.nvim'

	use({
	  "nvim-neo-tree/neo-tree.nvim",
	  branch = "v3.x",
	  requires = {
	    "nvim-lua/plenary.nvim",
	    "nvim-tree/nvim-web-devicons",
	    "MunifTanjim/nui.nvim",
	  }
	})

	use {
		'akinsho/bufferline.nvim',
		tag = "*",
		requires = 'nvim-tree/nvim-web-devicons'
	}

	use {
    	'windwp/nvim-autopairs',
    	event = 'InsertEnter',
		config = function()
		    require('nvim-autopairs').setup{}
        end
    }

    use 'neovim/nvim-lspconfig'
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            'neovim/nvim-lspconfig',
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer'
        }
    }
end)

