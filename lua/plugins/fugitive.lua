-- Show some Git stuff to manage inside git project repos
return { 
  'tpope/vim-fugitive', 
  config = function()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
  end
}
