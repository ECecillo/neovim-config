return {
  'mbbill/undotree',
  lazy = false,
  config = function()
   vim.keymap.set("n", "<leader>r", vim.cmd.UndotreeToggle); 
  end
}
