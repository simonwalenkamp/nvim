vim.g.mapleader = " "

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "]d", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Next diagnostic" })
vim.keymap.set("n", "[d", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Previous diagnostic" })
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line diagnostics" })
vim.keymap.set("n", "<leader>cq", vim.diagnostic.setloclist, { desc = "Buffer diagnostics" })

local project = require("walenkamp.project")

vim.keymap.set("n", "<leader>tt", function()
  project.terminal()
end, { desc = "Terminal (project root)" })
vim.keymap.set("n", "<leader>gg", function()
  project.terminal({ "lazygit" })
end, { desc = "Lazygit (project root)" })
