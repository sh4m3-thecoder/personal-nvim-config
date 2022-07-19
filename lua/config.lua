--Window Customizations
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cul = true

-- Buffer Customizations
vim.opt.autoindent = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.autoindent = true

--Global Customization
vim.opt.lazyredraw = true

-- Shell Customization
vim.opt.shell = "pwsh.exe"

--Launch nvim-tree
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		adaptive_size = true,
		mappings = {
			list = {
			{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})

