-- add line number
vim.opt.nu = true
-- add relaive line number
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

-- Custom config for undotreetoggle 
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.wrap = false

-- add some special rule when pattern matchin like : /vim* =
-- Will select start to the equal symbol and not any further.
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.colorcolumn = "100" 
