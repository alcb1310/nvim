vim.pack.add({
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter' }
})

vim.api.nvim_create_autocmd('PackChanged', {
    desc = 'Update treesitter configs on pack update',
    group = vim.api.nvim_create_augroup('alcb1310/ts-pack', { clear = true }),
    callback = function()
        vim.cmd [[TSUpdate]]
    end
})
