--Bare essentials
require("keybinds")
require("plugins")
require("config")

--Plugins

--Lsp
require("completion-config")
require("null_ls_config")
require("mason-config")
require("my_lspconfig")

--Beautify
require("statusline")
require("devicons")
require("treesitter-config")
require("config-for-bufferline")
require("startup-config")
require("catpuccin")

--Utility
require("toggleterm-config")
require("discord-config")
require("telescope-config")

--Special to neovide
if vim.g.neovide then
	require("neovide_lua_config")
end
