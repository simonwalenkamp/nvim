local M = {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' }, -- or zbirenbaum/copilot.lua
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
    },
    opts = {
      keymaps = {
        toggle_chat = '<leader>cp',
      },
    },
  },
}

-- Explicitly define the keymap
vim.keymap.set('n', '<leader>cp', '<cmd>CopilotChatToggle<CR>', { desc = 'Toggle Copilot Chat' })

return M
