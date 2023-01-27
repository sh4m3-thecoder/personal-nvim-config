local packer = require("packer")

packer.init({
	display = {
		open_fn = require("packer.util").float,
		show_all_info = true,
		prompt_border = "double",
	},
})

vim.cmd([[packadd packer.nvim]])

return packer.startup(function(use)
	--Packer
	use("wbthomason/packer.nvim")

	--themes
	use("olimorris/onedarkpro.nvim")
	use("marko-cerovac/material.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })

	--Treesitter
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

	--Statuslines and winbar
	use({ "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons" } })
	use({ "SmiteshP/nvim-navic", requires = { "neovim/nvim-lspconfig" } })

	--LspConfig and Lspinstaller, and also the following configs because why not
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	--null-ls
	use("jose-elias-alvarez/null-ls.nvim")

	--nvim-tree
	use({
		"nvim-tree/nvim-tree.lua",
		tag = "nightly",
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	-- auto pairs
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- startup
	use({
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	})

	--gitsigns
	use({
		"lewis6991/gitsigns.nvim",
		-- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
		config = function()
			require("gitsigns").setup()
		end,
	})

	--toggleterm
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	--bufferline
	use({
		"akinsho/bufferline.nvim",
		after = "catppuccin",
		tag = "v3.*",
		requires = "nvim-tree/nvim-web-devicons",
		opt = false,
	})

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

	--competitive programing heheheheeee
	use({ "xeluxee/competitest.nvim", requires = "MunifTanjim/nui.nvim" })

	--indent indicators
	use("lukas-reineke/indent-blankline.nvim")

	--nvim-notify
	use({ "rcarriga/nvim-notify" })

	--surround
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({})
		end,
	})

	--lazygit
	use("kdheepak/lazygit.nvim")

	--True zen
	use({
		"loqusion/true-zen.nvim",
		config = function()
			require("true-zen").setup({
				mode = {},
			})
		end,
	})

	use({
		"jakewvincent/texmagic.nvim",
		config = function()
			require("texmagic").setup({
				-- Config goes here; leave blank for defaults
			})
		end,
	})

	use({ "CRAG666/code_runner.nvim", requires = "nvim-lua/plenary.nvim" })
end)
