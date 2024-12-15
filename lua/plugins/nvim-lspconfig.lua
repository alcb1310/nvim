local servers = {
    'lua_ls',
    'gopls',
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
        ---@diagnostic disable-next-line: missing-fields
        require("mason-lspconfig").setup({
            ensure_installed = servers
        })

        -- After setting up mason-lspconfig you may set up servers via lspconfig
        -- require("lspconfig").lua_ls.setup {}
        -- require("lspconfig").rust_analyzer.setup {}
        -- ...
        local lspconfig = require('lspconfig')

        for _, server in ipairs(servers) do
            lspconfig[server].setup {
                on_attach = on_attach
            }
        end
    end
}
