-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
keymap.set("n", "<leader>pe", vim.cmd.Ex)

keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- remove content inside bracket or [
keymap.set("n", "<leader>bc", "ci{")
keymap.set("n", "<leader>br", "ci[")

-- Copy stuff relative to cursor
keymap.set("n", "<leader>y", '"+y')
-- copy the selected text
keymap.set("v", "<leader>y", '"+y')
-- Use to copy an entire line in system clipboard.
keymap.set("n", "<leader>Y", "<cmd> %y+ <CR>")

-- Give us the possibility to move selected code up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Give the possibility to replace every word where the cursor is at
keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Split horizontally
keymap.set("n", "<leader>hs", ":split<CR>")
-- Split vertically
keymap.set("n", "<leader>vs", ":vsplit<CR>")

-- Move between window
keymap.set("n", "<s-k>", "<C-w>k")
keymap.set("n", "<s-j>", "<C-w>j")
keymap.set("n", "<s-l>", "<C-w>l")
keymap.set("n", "<s-h>", "<C-w>h")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "C-w>+")
keymap.set("n", "<C-w><right>", "C-w>-")

-- Select all
keymap.set("n", "<leader>A", "gg<S-v>G")

-- New tab, and switch between them
keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
