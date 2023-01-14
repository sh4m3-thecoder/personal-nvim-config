require("catppuccin").setup({
	--
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	background = { -- :h background
		light = "latte",
		dark = "mocha",
	},
	compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
	transparent_background = false,
	term_colors = false,
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = { "italic" },
		functions = {},
		keywords = { "italic" },
		strings = {},
		variables = {},
		numbers = {},
		booleans = { "bold" },
		properties = {},
		types = {},
		operators = {},
	},
	color_overrides = {},
	custom_highlights = {},
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		telescope = true,
		treesitter = true,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = false,
		},
		notify = true,
		dashboard = true,
		mason = true,
		--
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
})

require("material").setup({
	contrast = {
		terminal = true, -- Enable contrast for the built-in terminal
		sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
		floating_windows = true, -- Enable contrast for floating windows
		cursor_line = false, -- Enable darker background for the cursor line
		non_current_windows = false, -- Enable darker background for non-current windows
		filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
	},

	styles = { -- Give comments style such as bold, italic, underline etc.
		comments = { --[[ italic = true ]]
		},
		strings = { --[[ bold = true ]]
		},
		keywords = { underline = true },
		functions = { --[[ bold = true, undercurl = true ]]
		},
		variables = {},
		operators = {},
		types = {},
	},

	plugins = { -- Uncomment the plugins that you use to highlight them
		-- Available plugins:
		-- "dap",
		"dashboard",
		-- "gitsigns",
		-- "hop",
		"indent-blankline",
		-- "lspsaga",
		-- "mini",
		-- "neogit",
		"nvim-cmp",
		"nvim-navic",
		"nvim-tree",
		-- "nvim-web-devicons",
		-- "sneak",
		-- "telescope",
		-- "trouble",
		-- "which-key",
	},

	disable = {
		colored_cursor = false, -- Disable the colored cursor
		borders = true, -- Disable borders between verticaly split windows
		background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
		term_colors = false, -- Prevent the theme from setting terminal colors
		eob_lines = true, -- Hide the end-of-buffer lines
	},

	high_visibility = {
		lighter = false, -- Enable higher contrast text for lighter style
		darker = false, -- Enable higher contrast text for darker style
	},

	lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

	async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

	custom_colors = nil, -- If you want to everride the default colors, set this to a function

	custom_highlights = {}, -- Overwrite highlights with your own
})

require("onedarkpro").setup({
	colors = {}, -- Override default colors or create your own
	highlights = {}, -- Override default highlight groups or create your own
	filetypes = { -- Override which filetype highlight groups are loaded
		-- See the 'Configuring filetype highlights' section for the available list
	},
	plugins = { -- Override which plugin highlight groups are loade
		all = true,
	},
	styles = { -- For example, to apply bold and italic, use "bold,italic"
		types = "italic", -- Style that is applied to types
		numbers = "NONE", -- Style that is applied to numbers
		strings = "NONE", -- Style that is applied to strings
		comments = "italic", -- Style that is applied to comments
		keywords = "NONE", -- Style that is applied to keywords
		constants = "bold", -- Style that is applied to constants
		functions = "NONE", -- Style that is applied to functions
		operators = "NONE", -- Style that is applied to operators
		variables = "NONE", -- Style that is applied to variables
		conditionals = "italic", -- Style that is applied to conditionals
		virtual_text = "NONE", -- Style that is applied to virtual text
	},
	options = {
		bold = true, -- Use bold styles?
		italic = true, -- Use italic styles?
		underline = true, -- Use underline styles?
		undercurl = true, -- Use undercurl styles?
		cursorline = false, -- Use cursorline highlighting?
		transparency = false, -- Use a transparent background?
		terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
		highlight_inactive_windows = false, -- When the window is out of focus, change the normal background?
	},
})
