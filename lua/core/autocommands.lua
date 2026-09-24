vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight on yank',
    group = vim.api.nvim_create_augroup('alcb1310/yank', { clear = true }),
    callback = function()
        vim.hl.hl_op()
    end
})

vim.api.nvim_create_autocmd('BufWritePre', {
    desc = 'Format files on save',
    group = vim.api.nvim_create_augroup('alcb1310/save', { clear = true }),
    callback = function()
        vim.lsp.buf.format()
    end
})
