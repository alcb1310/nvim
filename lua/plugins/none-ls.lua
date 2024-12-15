return {
    "nvimtools/none-ls.nvim",
    event = { "LspAttach" },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvimtools/none-ls-extras.nvim",
        {
            "jay-babu/mason-null-ls.nvim",
            event = { "BufReadPre", "BufNewFile" },
            dependencies = {
                "williamboman/mason.nvim",
                "nvimtools/none-ls.nvim",
            },
        },
    },
    config = function()
        require('mason-null-ls').setup({
            ensure_installed = {
                'eslint_d',
                'gofumpt',
                'goimports-reviser',
                'golangci-lint',
                'prettierd',
                'stylua',
            },
            methods = {
                diagnostics = true,
                formatting = true,
                code_actions = true,
                completion = true,
                hover = true,
            },
        })

        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,

                null_ls.builtins.formatting.goimports_reviser,
                null_ls.builtins.formatting.gofumpt,
                null_ls.builtins.formatting.prettierd,

                null_ls.builtins.diagnostics.golangci_lint,
                require("none-ls.code_actions.eslint"),
            },
        })
    end,
}
