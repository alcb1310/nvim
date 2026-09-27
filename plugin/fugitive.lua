vim.pack.add({
    { src = 'https://github.com/tpope/vim-fugitive' },
})

vim.keymap.set('n', 'gs', vim.cmd.Git, { desc = 'Git status' })
vim.keymap.set('n', 'gp', '<cmd>Git push<cr>', { desc = 'Git push' })
vim.keymap.set('n', '<leader>gl', '<cmd>Git log --oneline<cr>', { desc = 'Git log' })
vim.keymap.set('n', '<leader>gb', '<cmd>Git blame<cr>', { desc = 'Git blame' })
