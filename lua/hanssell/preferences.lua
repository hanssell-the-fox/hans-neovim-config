require("hanssell.remaps")

vim.cmd([[ set wildmenu ]])
vim.cmd([[ set confirm ]])
vim.cmd([[ set title ]])
vim.cmd([[ set t_Co=256 ]])
vim.cmd([[ syntax on ]])
vim.opt.updatetime = 50

-- Tab / Indentation
vim.cmd([[ set smartindent ]])
vim.cmd([[ set tabstop=2 ]])
vim.cmd([[ set shiftwidth=2 ]])
vim.cmd([[ set softtabstop=2 ]])
vim.cmd([[ set expandtab ]])

-- Search
vim.cmd([[ set incsearch ]])
vim.cmd([[ set ignorecase ]])
vim.cmd([[ set smartcase ]])
vim.opt.hlsearch = false

-- Appearance
vim.cmd([[ set nu! ]])
vim.cmd([[ set relativenumber ]])
--vim.cmd([[ set guicursor= ]])
--vim.cmd([[ set colorcolumn="80" ]])
vim.cmd([[ set termguicolors ]])
vim.cmd([[ set scrolloff=8 ]])
vim.opt.signcolumn = "yes"
vim.opt.completeopt = "menuone"
vim.opt.cmdheight = 1

-- Behavior
vim.cmd([[ set encoding=utf8 ]])
vim.cmd([[ set mouse=a ]])
vim.opt.isfname:append("@-@")
vim.opt.hidden     = true
vim.opt.swapfile   = false
vim.opt.backup     = false
vim.opt.undodir    = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile   = true
vim.opt.backspace  = "indent,eol,start"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.modifiable = true
vim.opt.clipboard:append("unnamedplus")

