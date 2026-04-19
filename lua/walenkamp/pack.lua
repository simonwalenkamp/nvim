vim.pack.add({
  -- Colorscheme
  { src = "https://github.com/folke/tokyonight.nvim" },

  -- Shared dependencies
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/MunifTanjim/nui.nvim" },

  -- File explorer
  { src = "https://github.com/nvim-neo-tree/neo-tree.nvim" },

  -- Fuzzy finder
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
})

require("walenkamp.plugins.tokyonight")
require("walenkamp.plugins.telescope")
require("walenkamp.plugins.neo-tree")
