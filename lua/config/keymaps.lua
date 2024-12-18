vim.g.mapleader = ' '

vim.keymap.set('n', '-', vim.cmd.Oil, { desc = 'Open file explorer' })

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
