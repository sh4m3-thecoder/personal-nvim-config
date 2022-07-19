return require('packer').startup(
    function()
		--Packer
		use 'wbthomason/packer.nvim'

		--Cobalt2 and onedark colorscheme
		use { 'lalitmee/cobalt2.nvim', requires = 'tjdevries/colorbuddy.nvim' }
		use { 'navarasu/onedark.nvim' }
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

		-- auto pairs
		use 'jiangmiao/auto-pairs'

		-- startup
		use {'startup-nvim/startup.nvim',
			requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
			config = function()
				require"startup".setup()
			end
		}

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

		-- telescope
		use {
			'nvim-telescope/telescope.nvim',
			requires = {{'nvim-lua/plenary.nvim'}}
		}

		-- vim-fugitive
		use 'tpope/vim-fugitive'

		-- xml-lua.vim
		use 'XeroOl/xml-lua.vim'

		-- coderunner
		use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }
    end)


