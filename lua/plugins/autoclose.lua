return {
  -- As the name implies it close, delete brackets, parenthesis, quotes...
  'm4xshen/autoclose.nvim',
  config = function()
    require('autoclose').setup();
  end
}
