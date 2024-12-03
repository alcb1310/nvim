return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        "nvim-neotest/neotest-go",
        "marilari88/neotest-vitest",
    },
    ft = {
        "go",
        "js",
        "ts",
    },
    keys = {
        { "<leader>tr", "<cmd>lua require('neotest').run.run()<CR>",                     desc = "Run nearest test" },
        { "<leader>tf", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>",   desc = "Run file" },
        { "<leader>ts", "<cmd>lua require('neotest').summary.toggle()<cr>",              desc = "Toggle summary" },
        { "<leader>to", "<cmd>lua require('neotest').output.open({ enter = true })<cr>", desc = "Open output" },
    },
    config = function()
        -- get neotest namespace (api call creates or returns namespace)
        local neotest_ns = vim.api.nvim_create_namespace("neotest")
        vim.diagnostic.config({
            virtual_text = {
                format = function(diagnostic)
                    local message =
                        diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
                    return message
                end,
            },
        }, neotest_ns)
        require("neotest").setup({
            -- your neotest config here
            adapters = {
                require("neotest-go"),
                require("neotest-vitest") {
                    -- Filter directories when searching for test files. Useful in large projects (see Filter directories notes).
                    filter_dir = function(name, rel_path, root)
                        return name ~= "node_modules"
                    end,
                },
            },
        })
    end
}
