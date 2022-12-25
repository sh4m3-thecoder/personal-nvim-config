local home = os.getenv("HOME")
local db = require("dashboard")

db.custom_header = {
	[[        /\ \         /\ \    /\ \     / /\                       /\ \     _    /\ \       /\ \    ]],
	[[       /  \ \       /  \ \  /  \ \   / /  \                     /  \ \   /\_\ /  \ \      \_\ \   ]],
	[[      / /\ \ \     / /\ \_\/ /\ \ \ /_/ /\ \                   / /\ \ \_/ / // /\ \ \     /\__ \  ]],
	[[     / / /\ \_\   / / /\/_/\/_/\ \ \\_\/\ \ \                 / / /\ \___/ // / /\ \_\   / /_ \ \ ]],
	[[    / /_/_ \/_/  / /_/_        / / /     \ \ \               / / /  \/____// /_/_ \/_/  / / /\ \ \]],
	[[   / /____/\    / /___/\      / / /       \ \ \             / / /    / / // /____/\    / / /  \/_/]],
	[[  / /\____\/   / /\__ \ \    / / /  _      \ \ \           / / /    / / // /\____\/   / / /       ]],
	[[ / / /______  / / /__\ \ \  / / /_/\_\    __\ \ \___  _   / / /    / / // / /______  / / /        ]],
	[[/ / /_______\/ / /____\ \ \/ /_____/ /   /___\_\/__/\/\_\/ / /    / / // / /_______\/_/ /         ]],
	[[\/__________/\/__________\/\________/    \_________\/\/_/\/_/     \/_/ \/__________/\_\/          ]],
}

db.hide_statusline = false
db.hide_tabline = false
db.hide_winbar = false

db.custom_center = {
	{
		icon = "  ",
		desc = "Find  File                              ",
		action = "Telescope find_files find_command=rg,--hidden,--files",
		shortcut = "\\ff",
	},
	{
		icon = "  ",
		desc = "Recently opened files                   ",
		action = "Telescope oldfiles",
		shortcut = "\\of",
	},
	{
		icon = "  ",
		desc = "File Browser                            ",
		action = "Telescope file_browser",
		shortcut = "\\bw",
	},
	{
		icon = "  ",
		desc = "Open Nvim Configuration                 ",
		action = "NvimTreeOpen ~/Appdata/Local/nvim",
		shortcut = "\\fc",
	},
	{
		icon = "  ",
		desc = "New File                                ",
		action = "DashboardNewFile",
		shortcut = "\\cn",
	},
	{
		icon = "  ",
		desc = "Quit Neovim                             ",
		action = "qa",
		shortcut = ":x",
	},
}
