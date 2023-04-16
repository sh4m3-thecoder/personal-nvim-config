--Bare Essentials
require("plugins")
require("keybinds")
require("themes")
require("config")

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

--Lsp
require("completion-config")
require("null-ls-config")
require("my-lspconfig")

--Special to neovide
if vim.g.neovide then
	vim.o.guifont = "CozetteVector:h11"
end
