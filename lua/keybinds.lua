local wk = require("which-key")

NORMAL = "n"
INSERT = "i"
VISUAL = "v"
COMMAND = "c"

vim.g.mapleader = " "

local function keymaps(tbl)
	for i, val in pairs(tbl) do
		local mode = {}
		for _, mv in pairs(val.mode) do
			table.insert(mode, mv)
		end
		local key = i
		local gay = val[1]
		local opt = val[2] or {}
		vim.keymap.set(mode, key, gay, opt)
	end
end

local n = { noremap = true }
local s = { silent = true }
local ns = {
	noremap = true,
	silent = true,
}

vim.keymap.set("n", "<S-Up>", ":resize +3 <CR>", s)
vim.keymap.set("n", "<S-Down>", ":resize -3 <CR>", s)
vim.keymap.set("n", "<S-Right>", ":vertical resize -3 <CR>", s)
vim.keymap.set("n", "<S-Left>", ":vertical resize +3 <CR>", s)

--Bufferline keymaps
vim.keymap.set("n", "<C-Tab>", "<cmd>BufferLineCycleNext<CR>", ns)
vim.keymap.set("n", "<S-C-Tab>", "<cmd>BufferLineCyclePrev<CR>", ns)

-- Telescope keybindings

wk.register({
	f = "Format File",
	b = {
		name = "Buffers",
		f = { "<cmd>Telescope buffers<cr>", "Find Buffer" },
		g = { "<cmd>BufferLinePick<cr>", "Pick Bufferline" },
	},
	h = { "<cmd>Telescope help_tags<cr>", "Show Help Tags" },
	w = { name = "Workspace", a = "Add workspace" },
	q = { "<cmd>TroubleToggle<cr>", "Open Loclist" },
	g = {
		name = "Goto",
		d = { vim.lsp.buf.definition, "Definition" },
		D = { vim.lsp.buf.declaration, "Declaration" },
		r = { "References" },
	},
	t = {
		name = "Telescope",
		c = { "<cmd>Telescope colorscheme<cr>", "Colorschemes" },
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap = false },
	},
	C = {
		name = "CompetiTest",
	Rc = { "<cmd>CompetiTestReceive contest<cr>", "Receive Contest" },
	r = { "<cmd>CompetiTestRun<cr>", "Run File with Testcases " },
	}
}, { prefix = "<leader>" })

wk.register({
	["<leader>e"] = { vim.diagnostic.open_float, "Open Float" },
	["<leader>E"] = { "<cmd>NvimTreeToggle<cr>", "Toggle Explorer" },
	["<leader>D"] = "Type Definition",
	["<leader>ca"] = "Code Action",
})
