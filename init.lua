-- Define the leader key, this should always be the very first thing you add to your
-- Neovim configuration files, by default Neovim uses \ as the leader.
-- Remember that any keymaps you define prior to assigning a leader key will be using
-- the prior value for it
vim.g.mapleader = " "
vim.g.localmapleader = " "

---@param directory string
local function load_modules(directory)
    vim.iter(vim.api.nvim_get_runtime_file('lua/' .. directory .. '/*.lua', true))
        :map(function(file)
            local name = vim.fn.fnamemodify(file, ':t:r')
            require(directory .. '.' .. name)
        end)
end

load_modules('core')

-- Here we will be defining some global keymaps

vim.keymap.set('n', '-', vim.cmd.Ex, { desc = 'Open netrw file browser' })
vim.keymap.set('n', '<leader>so', '<cmd>update<cr><cmd>source<cr>',
    { desc = 'saves and sources the current file', silent = true })
vim.keymap.set('i', '<M-i>', '<C-x><C-o>', { desc = 'Displays completion menu' })

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

vim.api.nvim_create_autocmd('BufWritePre', {
    desc = 'Format files on save',
    group = vim.api.nvim_create_augroup('alcb1310/save', { clear = true }),
    callback = function()
        vim.lsp.buf.format()
    end
})
