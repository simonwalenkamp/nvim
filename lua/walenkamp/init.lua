require("walenkamp.remap")
require("walenkamp.lazy")

-- When to start scrolling
vim.opt.scrolloff = 13

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({
      higroup = "Visual",  -- highlight group to use
      timeout = 200,       -- duration (ms)
    })
  end,
})

