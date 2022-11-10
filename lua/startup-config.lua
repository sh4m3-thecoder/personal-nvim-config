local db = require("dashboard")

db.custom_center = {
	{
		icon = "  ",
		desc = "Find  File                              ",
		action = "Telescope find_files find_command=rg,--hidden,--files",
		shortcut = "SPC f f",
	},
	{
		icon = "  ",
		desc = "File Browser                            ",
		action = "Telescope file_browser",
		shortcut = "SPC f b",
	},
	{
		icon = "  ",
		desc = "Open Nvim Configuration                 ",
		action = "edit ~/appdata/local/nvim",
		shortcut = "SPC f c",
	},
	{
		icon = "  ",
		desc = "New File                                ",
		action = "DashboardNewFile",
		shortcut = "SPC c n",
	},
}
