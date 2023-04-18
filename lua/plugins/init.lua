local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

local plugins = {
	--Packer
	"wbthomason/packer.nvim",

	--Faster load times
	"lewis6991/impatient.nvim",

	--themes
	"olimorris/onedarkpro.nvim",
	"marko-cerovac/material.nvim",
	{ "catppuccin/nvim", name = "catppuccin", dependencies = "akinsho/bufferline.nvim" },

	--Treesitter
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	--Statuslines and winbar
	{ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "SmiteshP/nvim-navic", dependencies = { "neovim/nvim-lspconfig" } },

	--LspConfig and Lspinstaller, and also the following configs beca why not

	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",

	{
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	},

	--null-ls
	"jose-elias-alvarez/null-ls.nvim",

	--nvim-tree
	{
		"nvim-tree/nvim-tree.lua",
		tag = "nightly",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- auto pairs
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},

	-- startup
	{
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	},

	--gitsigns
	{
		"lewis6991/gitsigns.nvim",
		-- tag = 'release' -- To  the latest release (do not  this if you run Neovim nightly or dev builds!)
		config = function()
			require("gitsigns").setup()
		end,
	},

	--toggleterm
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup()
		end,
	},

	--bufferline
	{
		"akinsho/bufferline.nvim",
		after = "catppuccin",
		version = "v3.*",
		dependencies = "nvim-tree/nvim-web-devicons",
		opt = false,
	},

	-- Code Completion

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

	-- discord presence
	"andweeb/presence.nvim",

	-- lspkind
	"onsails/lspkind.nvim",

	-- telescope and its plugins
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { { "nvim-lua/plenary.nvim" } },
	},
	"nvim-telescope/telescope-file-browser.nvim",

	-- xml-lua.vim
	"XeroOl/xml-lua.vim",

	--competitive programing heheheheeee
	{ "xeluxee/competitest.nvim", dependencies = "MunifTanjim/nui.nvim" },

	--indent indicators
	"lukas-reineke/indent-blankline.nvim",

	--nvim-notify
	"rcarriga/nvim-notify",

	--surround
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to  `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({})
		end,
	},

	--lazygit
	"kdheepak/lazygit.nvim",

	--True zen
	{
		"loqusion/true-zen.nvim",
		config = function()
			require("true-zen").setup({
				mode = {},
			})
		end,
	},

	{
		"jakewvincent/texmagic.nvim",
		config = function()
			require("texmagic").setup({
				-- Config goes here; leave blank for defaults
			})
		end,
	},

	{ "CRAG666/code_runner.nvim", dependencies = "nvim-lua/plenary.nvim" },

	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup({
				-- your configuration comes here
				-- or leave it empty to  the default settings
				-- refer to the configuration section below
			})
		end,
	},
}

require("lazy").setup(plugins)

--Lsp
require("plugins.completion-config")
require("plugins.null-ls-config")
require("plugins.my-lspconfig")

--Utility
require("plugins.toggleterm-config")
require("plugins.telescope-config")
require("plugins.nvimtree-config")
require("plugins.competitest-config")
require("plugins.discord-config")

--Beautify
require("plugins.treesitter-config")
require("plugins.startup-config")
require("plugins.devicons")
require("plugins.statusline")
require("plugins.bufferline-config")
require("plugins.indent-blankline-config")
