return require('packer').startup(
    function()
		--Packer
		use 'wbthomason/packer.nvim'

		--Cobalt2 colorscheme
		use { 'lalitmee/cobalt2.nvim', requires = 'tjdevries/colorbuddy.nvim' }

		--Treesitter
		use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

		--lualine
		use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}

		--LspConfig and Lspinstaller
		use {
			'neovim/nvim-lspconfig',
			'williamboman/nvim-lsp-installer',
		}

		--nvim-tree
		use {
			'kyazdani42/nvim-tree.lua',
			requires = {
				'kyazdani42/nvim-web-devicons',
			},
			tag = 'nightly'
		}

		--vim-closer
		use 'rstacruz/vim-closer'

		--startify
		use 'mhinz/vim-startify'

		-- bufferline
		use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}	

		-- Code Completion
		use {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/nvim-cmp',
			-- luasnip
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			-- snippets
			'rafamadriz/friendly-snippets'
		}

		-- discord presence
		use 'andweeb/presence.nvim'

		-- lspkind
		use 'onsails/lspkind.nvim'
    end)


