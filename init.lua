--Bare Essentials
require("plugins")
require("config")
require("themes")
require("keybinds")
--Special to neovide
if vim.g.neovide then
	vim.o.guifont = "CozetteVector:h11"
end
