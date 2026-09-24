vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight on yank',
    group = vim.api.nvim_create_augroup('alcb1310/yank', { clear = true } ),
    callback = function()
        vim.hl.hl_op()
    end
})
