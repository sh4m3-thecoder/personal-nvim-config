local keymap = vim.api.nvim_set_keymap
local n = { noremap = true }
local s = { silent = true }
local ns = {
	noremap = true,
	silent = true,
}

local function nkeymap(key, map)
	keymap("n", key, map, ns)
end

--Window Resize Keymaps
keymap("n", "<S-Up>", ":resize +3 <CR>", s)
keymap("n", "<S-Down>", ":resize -3 <CR>", s)
keymap("n", "<S-Right>", ":vertical resize -3 <CR>", s)
keymap("n", "<S-Left>", ":vertical resize +3 <CR>", s)

--Bufferline keymaps
keymap("n", "]b", ":BufferLineCycleNext<CR>", ns)
keymap("n", "[b", ":BufferLineCyclePrev<CR>", ns)
keymap("n", "]B", ":BufferLineMoveNext<CR>", ns)
keymap("n", "[B", ":BufferLineMovePrev<CR>", ns)
keymap("n", "gb", ":BufferLinePick<CR>", ns)

--Lsp keymaps

-- Telescope keybindings
nkeymap("<leader>ff", "<cmd>Telescope find_files<cr>")
nkeymap("<leader>fc", "<cmd>NvimTreeOpen ~/appdata/local/nvim")
nkeymap("<leader>bf", "<cmd>Telescope file_browser<cr>")
nkeymap("<leader>fb", "<cmd>Telescope buffers<cr>")
nkeymap("<leader>fh", "<cmd>Telescope help_tags<cr>")
nkeymap("<leader>of", "<cmd>Telescope oldfiles<cr>")
