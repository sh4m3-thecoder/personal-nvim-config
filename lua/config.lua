--Window Customizations
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cul = true

vim.cmd([[
	let &shell = 'pwsh'
	let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
	let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
	let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
	set shellquote=
	set shellxquote=
]])

-- Buffer Customizations
vim.opt.autoindent = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.clipboard = "unnamed"

--THEMEEEEEEEEEEEEE ily iris <3 
vim.cmd.colorscheme('catppuccin')
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
