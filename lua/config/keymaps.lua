-- Indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move a selection UP and DOWN
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Tooltips
local wk = require("which-key")

wk.add({
	{ "<leader>cc", "gcc", desc = "Comment/Uncomment", remap = true },
	{ "<leader>cc", "gcc", desc = "Comment/Uncomment", mode = "v", remap = true },
	{ "<leader>m", desc = "markdown" },
	{ "<leader>mp", "<cmd>MarkdownPreview<cr>", desc = "Preview", remap = true },
	{ "<leader>ms", "<cmd>MarkdownPreviewStop<cr>", desc = "Stop Preview", remap = true },
	{ "<leader>mt", "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle preview", remap = true },
})
