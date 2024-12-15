return {
    'nvimtools/none-ls.nvim',
    event = { 'LspAttach' },
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvimtools/none-ls-extras.nvim',
    },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,

                null_ls.builtins.formatting.goimports_reviser,
                null_ls.builtins.formatting.gofumpt,
                null_ls.builtins.formatting.prettierd,
                -- require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
                null_ls.builtins.diagnostics.golangci_lint,
                require 'none-ls.code_actions.eslint',
            },
        })
    end
}
