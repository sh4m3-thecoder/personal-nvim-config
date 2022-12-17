vim.opt.termguicolors = true
require("bufferline").setup({
	options = {
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
