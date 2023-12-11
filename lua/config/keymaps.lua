-- Indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move a selection UP and DOWN
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Tooltips
local wk = require("which-key")

wk.register({
	-- Comments
	c = {
		c = { "gcc", "Comment/Uncomment", noremap = false },
	},

	-- Markdorwn
	m = {
		{ "markdown" },
		p = { "<cmd>MarkdownPreview<cr>", "Preview", noremap = false },
		s = { "<cmd>MarkdownPreviewStop<cr>", "Stop Preview", noremap = false },
		t = { "<cmd>MarkdownPreviewToggle<cr>", "Toggle preview", noremap = false },
	},
}, { prefix = "<leader>" })

wk.register({
	-- Comments
	c = {
		c = { "gcc", "Comment/Uncomment", noremap = false },
	},
}, { prefix = "<leader>", mode = "v" })
