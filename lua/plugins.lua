return require("packer").startup(function(use)
	--Packer
	use("wbthomason/packer.nvim")

	--Cobalt2 and onedark colorscheme
	use({ "lalitmee/cobalt2.nvim", requires = "tjdevries/colorbuddy.nvim" })
	use({ "navarasu/onedark.nvim" })
	--Treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	--lualine
	use({ "nvim-lualine/lualine.nvim" })
	requires = { "kyazdani42/nvim-web-devicons", opt = true }

	--LspConfig and Lspinstaller, and also the following configs because why not
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})

	--nvim-tree
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons",
		},
		tag = "nightly",
	})

	-- auto pairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- startup
	use({ "glepnir/dashboard-nvim" })

	-- bufferline
	use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })

	-- Code Completion
	use({
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		-- luasnip
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		-- snippets
		"rafamadriz/friendly-snippets",
	})

	-- discord presence
	use("andweeb/presence.nvim")

	-- lspkind
	use("onsails/lspkind.nvim")

	-- telescope and its plugins
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "nvim-telescope/telescope-file-browser.nvim" })

	-- xml-lua.vim
	use("XeroOl/xml-lua.vim")

	--toggleterm
	use({
		"s1n7ax/nvim-terminal",
		config = function()
			vim.opt.hidden = true
			require("nvim-terminal").setup()
		end,
	})

	-- arduino syntax highlighting
	use("sudar/vim-arduino-snippets")

	--colorscheme
	use({ "catppuccin/nvim", as = "catppuccin" })

	--null-ls
	use("jose-elias-alvarez/null-ls.nvim")

	--competitive programing heheheheeee
	use("p00f/cphelper.nvim")
end)
