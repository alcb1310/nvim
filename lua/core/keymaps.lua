-- Here we will be defining some global keymaps

vim.keymap.set('n', '-', vim.cmd.Ex, { desc = 'Open netrw file browser' })
vim.keymap.set('n', '<leader>so', '<cmd>update<cr><cmd>source<cr>',
    { desc = 'saves and sources the current file', silent = true })
vim.keymap.set('i', '<M-i>', '<C-x><C-o>', { desc = 'Displays completion menu' })
vim.keymap.set('n', '<leader>rs', '<cmd>update<cr><cmd>restart<cr>', { desc = 'saves and restart neovim', silent = true })

vim.keymap.set('n', '<leader>f', ':find ')

vim.keymap.set('n', 'n', 'nzz', { desc = 'Find next result and center' })
vim.keymap.set('n', 'N', 'Nzz', { desc = 'Find prev result and center' })
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('n', '<leader>m', '<cmd>make<cr>', { desc = '[M]ake', silent = true })
vim.keymap.set('n', '<leader>mr', '<cmd>make run<cr>', { desc = '[M]ake [R]un', silent = true })

vim.keymap.set('n', 'co', '<cmd>copen<cr>', { desc = 'Qui[C]kfix list [O]pen', silent = true })
vim.keymap.set('n', 'cn', '<cmd>cnext<cr>', { desc = 'Qui[C]kfix list [N]ext', silent = true })
vim.keymap.set('n', 'cp', '<cmd>cprev<cr>', { desc = 'Qui[C]kfix list [P]rev', silent = true })

vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { desc = 'Yank to the system\'s clipboard', silent = true })
vim.keymap.set('n', '<leader>Y', [["+Y]], { desc = 'Yank to the system\'s clipboard', silent = true })

vim.keymap.set('n', 'x', '"_x', { desc = 'Use unknown register when deleting characters', silent = true })

vim.keymap.set('n', '<leader>pu', vim.pack.update, { desc = 'update packages', silent = true })
