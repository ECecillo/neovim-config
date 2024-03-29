return {
  "williamboman/mason.nvim",
  {
    "theprimeagen/harpoon",
    config = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      -- Add the current file to harpoon for quick switch
      vim.keymap.set("n", "<leader>a", mark.add_file)
      -- Display harpoon menu with file added
      vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

      -- Navigation shortcuts
      vim.keymap.set("n", "<C-j>", function() ui.nav_file(1) end)
      vim.keymap.set("n", "<C-k>", function() ui.nav_file(2) end)
      vim.keymap.set("n", "<C-l>", function() ui.nav_file(3) end)
      vim.keymap.set("n", "<C-m>", function() ui.nav_file(4) end)
    end
  },
  "github/copilot.vim"
}
