-- Here we will be setting up our LSP servers
local lsp_configs = vim.iter(vim.api.nvim_get_runtime_file('lsp/*.lua', true))
    :map(function(file)
        return vim.fn.fnamemodify(file, ':t:r')
    end)
    :totable()
vim.lsp.enable(lsp_configs)

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP specific configuration and keymaps',
    group = vim.api.nvim_create_augroup('alcb1310/lsp', { clear = true }),
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if not client then
            return
        end

        vim.lsp.completion.enable(true, client.id, 0, { autotrigger = true })

        vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = 'Format current file' })
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to Definition' })
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Actions' })
    end
})

vim.diagnostic.config({
    virtual_lines = {
        current_line = true
    }
})
