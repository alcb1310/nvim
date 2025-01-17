return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-neotest/neotest-go",
        "nvim-neotest/neotest-jest",
    },
    cmd = { "Neotest" },
    keys = {
        {
            "<leader>tf",
            function()
                require("neotest").run.run(vim.fn.expand("%"))
            end,
        },

        {
            "<leader>tr",
            function()
                require("neotest").run.run()
            end,
        },
        { "<leader>ts", ":Neotest summary<cr>", { silent = true } },
        { "<leader>to", ":Neotest output<cr>",  { silent = true } },
    },
    config = function()
        ---@diagnostic disable-next-line: missing-fields
        require("neotest").setup({
            adapters = {
                require("neotest-go")({
                    recursive_run = true,
                }),
                require("neotest-jest")({
                    jestCommand = "pnpm test --",
                }),
            },
        })
    end,
}
