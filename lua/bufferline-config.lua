vim.cmd([[packadd bufferline.nvim]])

Opt = nil

if vim.cmd([[colorscheme]]) == "catppuccin" then
	Opt = require("catppuccin.groups.integrations.bufferline").get()
end

vim.opt.termguicolors = true

require("bufferline").setup({
	options = {
		highlights = opt,
		show_buffer_close_icons = false,
		diagnostics = "nvim_lsp",
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "center",
				separator = true,
			},
		},
	},
})
