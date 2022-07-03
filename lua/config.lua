local window = vim.wo
local buffer = vim.bo
local global = vim.o

--Window Customizations
window.number = true
window.relativenumber = true
window.cul = true

--Buffer Customizations
buffer.autoindent = true
buffer.softtabstop = 4
buffer.tabstop = 4


--Global Customization
global.lazyredraw = true


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

