local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

local sources = {
	formatting.blue,
	formatting.stylua,
	formatting.eslint,
	formatting.clang_format.with({
		filetypes = { "cpp", "c", "cs" },
		extra_args = {
			"-style=webkit",
		},
	}),
}

null_ls.setup({
	sources = sources,
	on_attach = function(client)
		vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format({async = false})")
	end,
})
