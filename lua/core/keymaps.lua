vim.keymap.set('n', '<leader>pe', vim.cmd.Ex, { desc = 'Open Netrw' } )
vim.keymap.set('n', '<leader>rs', function()
    vim.cmd.update()
    vim.cmd.restart()
end, { desc = 'Saves and Restart neovim', silent = true })

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Switch to left window' } )
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Switch to down window' } )
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Switch to up window' } )
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Switch to right window' } )

vim.keymap.set('n', 'n', 'nzz', { desc = 'Find next result and center' } )
vim.keymap.set('n', 'N', 'Nzz', { desc = 'Find previous result and center' } )
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down and center' } )
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up and center' } )

-- Yank to the system's clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]], { silent = true } )
vim.keymap.set('n', '<leader>Y', [["+Y]], { silent = true } )
