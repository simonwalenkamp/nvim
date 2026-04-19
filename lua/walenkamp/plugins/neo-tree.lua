require("neo-tree").setup({
  filesystem = {
    window = {
      mappings = {
        ["<leader>e"] = "close_window",
      },
    },
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = false,
    },
  },
})

vim.keymap.set("n", "<leader>e", ":Neotree reveal<CR>", { desc = "NeoTree reveal", silent = true })
