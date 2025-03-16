-- vim.cmd([[ set scrolloff=8 ]])
vim.opt.scrolloff = 8
vim.opt.signcolumn = "no"
vim.opt.isfname:append("@-@")

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Shows the current line if disabled
vim.opt.cursorline = false
