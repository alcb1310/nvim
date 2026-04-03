require 'fzf-lua'.setup()

vim.keymap.set('n', '<leader>sf', '<cmd>FzfLua files<cr>', { desc = '[S]earch [F]iles', silent = true })
vim.keymap.set('n', '<leader>sb', '<cmd>FzfLua buffers<cr>', { desc = '[S]earch [B]uffers', silent = true })
vim.keymap.set('n', '<leader>sg', '<cmd>FzfLua live_grep<cr>', { desc = '[S]earch [G]rep', silent = true })
vim.keymap.set('n', '<leader>sh', '<cmd>FzfLua helptags<cr>', { desc = '[S]earch [H]elp', silent = true })

vim.keymap.set('n', '<leader>gs', '<cmd>FzfLua git_status<cr>', { desc = '[G]it [S]tatus', silent = true })
vim.keymap.set('n', '<leader>gc', '<cmd>FzfLua git_commits<cr>', { desc = '[G]it [C]ommits', silent = true })
vim.keymap.set('n', '<leader>gl', '<cmd>FzfLua git_blame<cr>', { desc = '[G]it b[L]ame', silent = true })
vim.keymap.set('n', '<leader>gb', '<cmd>FzfLua git_branches<cr>', { desc = '[G]it [B]ranches', silent = true })
