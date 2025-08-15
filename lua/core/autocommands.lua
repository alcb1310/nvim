vim.api.nvim_create_autocmd('BufWritePre', {
    desc = 'Format files on save',
    group = vim.api.nvim_create_augroup('alcb1310/save', { clear = true }),
    callback = function()
        vim.lsp.buf.format()
    end
})

vim.api.nvim_create_autocmd('BufWritePre', {
    desc = 'Create non existent directories if needed',
    group = vim.api.nvim_create_augroup('alcb1310/directory', { clear = true }),
    callback = function()
        local dir = vim.fn.expand('<afile>:p:h')
        if vim.fn.isdirectory(dir) == 0 then
            vim.fn.mkdir(dir, 'p')
        end
    end
})
