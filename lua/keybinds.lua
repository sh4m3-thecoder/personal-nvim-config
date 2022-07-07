local keymap = vim.api.nvim_set_keymap
local n = {noremap = true}
local s = {silent = true}
local ns = {
	noremap = true,
	silent = true
}



--Window Resize Keymaps
keymap('n', '<S-Up>', ':resize +3 <CR>', s)
keymap('n', '<S-Down>', ':resize -3 <CR>', s)
keymap('n', '<S-Right>', ':vertical resize -3 <CR>', s)
keymap('n', '<S-Left>', ':vertical resize +3 <CR>', s)

--Bufferline keymaps
keymap('n', ']b', ':BufferLineCycleNext <CR>', ns)
keymap('n', '[b', ':BufferLineCyclePrev <CR>', ns)
keymap('n', ']B', ':BufferLineMoveNext <CR>', ns)
keymap('n', '[B', ':BufferLineMovePrev <CR>', ns)

--Lsp keymaps

local function nkeymap(key,map)
	keymap('n', key, map, ns)
end

nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
nkeymap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')

-- Telescope keybindings
nkeymap('<leader>ff', '<cmd>Telescope find_files<cr>')
nkeymap('<leader>fb', '<cmd>Telescope buffers<cr>')
nkeymap('<leader>fh', '<cmd>Telescope help_tags<cr>')
