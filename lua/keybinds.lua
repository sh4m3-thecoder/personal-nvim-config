local keymap = vim.api.nvim_set_keymap
local s = { silent = true }
local ns = {
	noremap = true,
	silent = true,
}

local function nkeymap(key, map)
	keymap("n", key, map, ns)
end

--Personal keybinds
keymap("n", "<S-Up>", ":resize +3 <CR>", s)
keymap("n", "<S-Down>", ":resize -3 <CR>", s)
keymap("n", "<S-Right>", ":vertical resize -3 <CR>", s)
keymap("n", "<S-Left>", ":vertical resize +3 <CR>", s)
keymap("n", "<leader>nt", "<cmd>NvimTreeToggle<CR>", ns)
keymap("n", "<leader>cc", "<cmd>Telescope colorscheme<CR>", ns)

--Bufferline keymaps
keymap("n", "]b", "<cmd>BufferLineCycleNext<CR>", ns)
keymap("n", "[b", "<cmd>BufferLineCyclePrev<CR>", ns)
keymap("n", "]B", "<cmd>BufferLineMoveNext<CR>", ns)
keymap("n", "[B", "<cmd>BufferLineMovePrev<CR>", ns)
keymap("n", "<space>gt", "<cmd>BufferLinePick<CR>", ns)

-- Nabla keymap
keymap("n", "<space>p", "<cmd>lua require('nabla').popup()<CR>", ns)

-- Telescope keybindings
nkeymap("<leader>ff", "<cmd>Telescope find_files<cr>")
nkeymap("<leader>fc", "<cmd>NvimTreeOpen ~/appdata/local/nvim<cr>")
nkeymap("<leader>bf", "<cmd>Telescope file_browser<cr>")
nkeymap("<leader>fb", "<cmd>Telescope buffers<cr>")
nkeymap("<leader>fh", "<cmd>Telescope help_tags<cr>")
nkeymap("<leader>of", "<cmd>Telescope oldfiles<cr>")
