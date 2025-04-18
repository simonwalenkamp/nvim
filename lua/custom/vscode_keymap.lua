vim.opt.ignorecase = true
vim.opt.clipboard = 'unnamedplus'

local keymap = vim.keymap.set

-- remap leader key
local opts = { noremap = true, silent = true }
keymap('n', '<Space>', '', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- call vscode commands from neovim

-- general keymaps
keymap({ 'n', 'v' }, '<leader>t', "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
keymap({ 'n', 'v' }, '<leader>b', "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
keymap({ 'n', 'v' }, '<leader>d', "<cmd>lua require('vscode').action('editor.action.showHover')<CR>")
keymap({ 'n', 'v' }, 'ga', "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>")
keymap({ 'n', 'v' }, '<leader>sp', "<cmd>lua require('vscode').action('workbench.actions.view.problems')<CR>")
keymap({ 'n', 'v' }, '<leader>cn', "<cmd>lua require('vscode').action('notifications.clearAll')<CR>")
keymap({ 'n', 'v' }, '<leader>f', "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
keymap({ 'n', 'v' }, '<leader>cp', "<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>")vsk
keymap({ 'n', 'v' }, '<leader>pr', "<cmd>lua require('vscode').action('code-runner.run')<CR>")
keymap({ 'n', 'v' }, '<leader>fd', "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>")
keymap({ 'n', 'v' }, '<leader>e', "<cmd>lua require('vscode').action('workbench.action.toggleSidebarVisibility')<CR>")

