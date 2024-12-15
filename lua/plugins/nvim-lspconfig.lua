local servers = {
    'gopls',
    'html',
    'lua_ls',
    'sqlls',
    'tailwindcss',
    'ts_ls'
}

local on_attach = function(_, bufnr)
    local opts = { buffer = bufnr, silent = true }

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'rr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', 'rn', vim.lsp.buf.rename, opts)

    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, opts)

    vim.keymap.set('n', '[d', function()
        vim.diagnostic.jump({ count = -1, float = true })
    end, opts)
    vim.keymap.set('n', ']d', function()
        vim.diagnostic.jump({ count = 1, float = true })
    end, opts)
end

return {
    "neovim/nvim-lspconfig",
    event = {
        'BufReadPost',
        'BufNewFile',
    },
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        'saghen/blink.cmp',
        {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    -- See the configuration section for more details
                    -- Load luvit types when the `vim.uv` word is found
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = servers,
            automatic_installation = false,
        })

        local lspconfig = require('lspconfig')

        for _, server in ipairs(servers) do
            local capabilities = require('blink.cmp').get_lsp_capabilities()

            lspconfig[server].setup {
                on_attach = on_attach,
                capabilities = capabilities
            }
        end
    end
}
