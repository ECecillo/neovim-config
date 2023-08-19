vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pe", vim.cmd.Ex)

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- remove content inside bracket or [
vim.keymap.set("n", "<leader>bc", "ci{")
vim.keymap.set("n", "<leader>br", "ci[")

-- Copy stuff relative to cursor
vim.keymap.set("n", "<leader>y", "\"+y")
-- copy the selected text
vim.keymap.set("v", "<leader>y", "\"+y")
-- Use to copy an entire line in system clipboard.
vim.keymap.set("n", "<leader>Y", "<cmd> %y+ <CR>")

-- Give us the possibility to move selected code up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Give the possibility to replace every word where the cursor is at 
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")


-- Window management

-- Split vertically 
vim.keymap.set("n", "<leader>sh", ":sp<CR>")
-- Split horizontally
