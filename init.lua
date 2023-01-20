--Bare essentials
require("keybinds")
require("plugins")
require("themes")
require("config")

--Plugins

--Lsp
require("completion-config")
require("null-ls-config")
require("my-lspconfig")

--Utility
require("toggleterm-config")
require("telescope-config")
require("nvimtree-config")
require("competitest-config")
require("discord-config")

--Beautify
require("treesitter-config")
require("startup-config")
require("devicons")
require("statusline")
require("bufferline-config")
require("indent-blankline-config")

--Special to neovide
if vim.g.neovide then
	require("neovide-lua-config")
end
