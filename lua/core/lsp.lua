-- Here we will be setting up our LSP servers
local lsp_configs = vim.iter(vim.api.nvim_get_runtime_file('lsp/*.lua', true))
    :map(function(file)
        return vim.fn.fnamemodify(file, ':t:r')
    end)
    :totable()
vim.lsp.enable(lsp_configs)

-- vim.lsp.config('gopls', {
--     settings = {
--         gopls = {
--             gofumpt = true,
--         }
--     }
-- })

vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP specific configuration and keymaps',
    group = vim.api.nvim_create_augroup('alcb1310/lsp', { clear = true }),
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if not client then
            return
        end

        vim.lsp.completion.enable(true, client.id, 0, {
            autotrigger = true,
            convert = function(item)
                return { abbr = item.label:gsub('%b()', '') }
            end
        })

        vim.keymap.set('n', 'gd', '<cmd>FzfLua lsp_definitions<cr>',
            { desc = '[G]o to [D]efinition', silent = true })
        vim.keymap.set('n', 'gi', '<cmd>FzfLua lsp_implementations<cr>',
            { desc = '[G]o to [I]mplementations', silent = true })

        vim.keymap.set('n', '<leader>ff', vim.lsp.buf.format)
        vim.keymap.set('n', '<leader>ca', '<cmd>FzfLua lsp_code_actions<cr>',
            { desc = '[C]ode [A]ctions', silent = true })
        vim.keymap.set('n', '<leader>ds', '<cmd>FzfLua lsp_document_symbols<cr>',
            { desc = '[D]ocument [S]ymbols', silent = true })
    end
})

vim.diagnostic.config({
    virtual_lines = {
        current_line = true
    }
})
