--Bare essentials
require("keybinds")
require("plugins")
require("config")

--Plugins

--Lsp
require("completion-config")
require("null-ls-config")
require("my-lspconfig")

--Utility
require("toggleterm-config")
require("discord-config")
require("telescope-config")
require("nvimtree-config")

--Beautify
require("startup-config")
require("statusline")
require("devicons")
require("treesitter-config")
require("bufferline-config")
require("catpuccin")
require("indent-blankline-config")

--Special to neovide
if vim.g.neovide then
	require("neovide-lua-config")
end
