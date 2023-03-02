--Treesitter Config
local configs = require("nvim-treesitter.configs")
configs.setup({
	ensure_installed = { "python", "rust", "cpp", "latex", "lua", "javascript", "typescript" },
	highlight = { enable = true },
	indent = { enable = true },
})
