local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	[[      ::::::::::       ::::::::        ::::::::         :::  ]],
	[[     :+:             :+:    :+:      :+:    :+:      :+:+:   ]],
	[[    +:+             +:+                   +:+         +:+    ]],
	[[   +#++:++#        +#++:++#+           +#+           +#+     ]],
	[[  +#+             +#+    +#+        +#+             +#+      ]],
	[[ #+#             #+#    #+#       #+#              #+#       ]],
	[[##########       ########       ##########      #######      ]],
	--	[[         /\ \         /\ \    /\ \     / /\                       /\ \     _    /\ \       /\ \    ]],
	--	[[        /  \ \       /  \ \  /  \ \   / /  \                     /  \ \   /\_\ /  \ \      \_\ \   ]],
	--	[[       / /\ \ \     / /\ \_\/ /\ \ \ /_/ /\ \                   / /\ \ \_/ / // /\ \ \     /\__ \  ]],
	--	[[      / / /\ \_\   / / /\/_/\/_/\ \ \\_\/\ \ \                 / / /\ \___/ // / /\ \_\   / /_ \ \ ]],
	--	[[     / /_/_ \/_/  / /_/_        / / /     \ \ \               / / /  \/____// /_/_ \/_/  / / /\ \ \]],
	--	[[    / /____/\    / /___/\      / / /       \ \ \             / / /    / / // /____/\    / / /  \/_/]],
	--	[[   / /\____\/   / /\__ \ \    / / /  _      \ \ \           / / /    / / // /\____\/   / / /       ]],
	--	[[  / / /______  / / /__\ \ \  / / /_/\_\    __\ \ \___  _   / / /    / / // / /______  / / /        ]],
	--	[[ / / /_______\/ / /____\ \ \/ /_____/ /   /___\_\/__/\/\_\/ / /    / / // / /_______\/_/ /         ]],
	--	[[ \/__________/\/__________\/\________/    \_________\/\/_/\/_/     \/_/ \/__________/\_\/          ]],
}

dashboard.section.buttons.val = {
	dashboard.button("e", "  > New file", "<cmd>ene <BAR> startinsert <CR>"),
	dashboard.button("f", "  > Find file", "<cmd>Telescope find_files find_command=rg,--hidden,--files<CR>"),
	dashboard.button("b", "  > File Browser", "<cmd>Telescope file_browser<cr>"),
	dashboard.button("g", "  > Live Grep", "<cmd>Telescope live_grep<CR>"),
	dashboard.button("r", "  > Recent", "<cmd>Telescope oldfiles<CR>"),
	dashboard.button(
		"s",
		"  > Settings",
		"<cmd>edit ~/Appdata/local/nvim/init.lua | cd ~/appdata/local/nvim | NvimTreeOpen<CR>"
	),
	dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
}

require("alpha").setup(dashboard.opts)
