vim.cmd([[ set scrolloff=8 ]])
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Shows the current line if disabled
vim.opt.cursorline = false
