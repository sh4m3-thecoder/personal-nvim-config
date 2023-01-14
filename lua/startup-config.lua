local db = require("dashboard")

--db.custom_header = {
--	[[        /\ \         /\ \    /\ \     / /\                       /\ \     _    /\ \       /\ \    ]],
--	[[       /  \ \       /  \ \  /  \ \   / /  \                     /  \ \   /\_\ /  \ \      \_\ \   ]],
--	[[      / /\ \ \     / /\ \_\/ /\ \ \ /_/ /\ \                   / /\ \ \_/ / // /\ \ \     /\__ \  ]],
--	[[     / / /\ \_\   / / /\/_/\/_/\ \ \\_\/\ \ \                 / / /\ \___/ // / /\ \_\   / /_ \ \ ]],
--	[[    / /_/_ \/_/  / /_/_        / / /     \ \ \               / / /  \/____// /_/_ \/_/  / / /\ \ \]],
--	[[   / /____/\    / /___/\      / / /       \ \ \             / / /    / / // /____/\    / / /  \/_/]],
--	[[  / /\____\/   / /\__ \ \    / / /  _      \ \ \           / / /    / / // /\____\/   / / /       ]],
--	[[ / / /______  / / /__\ \ \  / / /_/\_\    __\ \ \___  _   / / /    / / // / /______  / / /        ]],
--	[[/ / /_______\/ / /____\ \ \/ /_____/ /   /___\_\/__/\/\_\/ / /    / / // / /_______\/_/ /         ]],
--	[[\/__________/\/__________\/\________/    \_________\/\/_/\/_/     \/_/ \/__________/\_\/          ]],
--}

db.preview_command = "Get-Content -Path ~/Documents/stuff/banner.txt | lolcat -F 0.3"
db.preview_file_path = ""
db.preview_file_height = 11
db.preview_file_width = 99

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
		icon = "  ",
		desc = "Live Grep                               ",
		action = "Telescope live_grep",
		shortcut = "\\fg",
	},
	{
		icon = "  ",
		desc = "Recently opened files                   ",
		action = "Telescope oldfiles",
		shortcut = "\\of",
	},
	{
		icon = "  ",
		desc = "File Browser                            ",
		action = "Telescope file_browser",
		shortcut = "\\bf",
	},
	{
		icon = "  ",
		desc = "Colorscheme                             ",
		action = "Telescope colorscheme",
		shortcut = "\\cc",
	},
	{
		icon = "  ",
		desc = "Open Neovim Configuration               ",
		action = "NvimTreeOpen ~/Appdata/Local/nvim \n edit ~/Appdata/local/nvim/init.lua",
		shortcut = "\\fc",
	},
	{
		icon = "  ",
		desc = "New File                                ",
		action = "enew",
		shortcut = "\\cn",
	},
	--{
	--	icon = "  ",
	--	desc = "Quit Neovim                             ",
	--	action = "quitall",
	--	shortcut = ":qa",
	--},
}
