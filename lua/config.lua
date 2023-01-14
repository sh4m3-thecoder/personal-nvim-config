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
vim.cmd([[set laststatus=3]])

--THEMEEEEEEEEEEEEE ily iris <3
vim.g.material_style = "palenight"
vim.cmd.colorscheme("material")

--Global Customization
vim.opt.lazyredraw = true

-- Shell Customization
vim.opt.shell = "pwsh.exe"

--nvim notify
local status, notify = pcall(require, "notify")
if not status then
	print("Nvim Notify is not installed")
else
	vim.notify = require("notify")
end

notify.setup({
	fps = 60,
	stages = "slide",
	timeout = 2500,
})
