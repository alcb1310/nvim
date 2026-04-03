local flash = require 'flash'

flash.setup()

vim.keymap.set({ 'n', 'x', 'o' }, 's', flash.jump, { desc = 'Flash', silent = true })
vim.keymap.set({ 'n', 'x', 'o' }, 'S', flash.treesitter, { desc = 'Flash Treesitter', silent = true })
vim.keymap.set('c', '<c-s>', flash.toggle, { desc = 'Toggle Flash search', silent = true })
