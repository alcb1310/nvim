vim.pack.add({
    { src = "https://github.com/nvim-neotest/neotest" },
    { src = "https://github.com/nvim-neotest/nvim-nio" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/antoinemadec/FixCursorHold.nvim" },
    { src = "https://github.com/nvim-neotest/neotest-go" },
    { src = "https://github.com/nvim-neotest/neotest-jest" },
    { src = "https://github.com/marilari88/neotest-vitest" },
})

local test = require 'neotest'

test.setup({
    adapters = {
        require("neotest-go")({
            recursive_run = true,
        }),
        require("neotest-jest")({
            jestCommand = "pnpm test --",
        }),
        require("neotest-vitest")
    },
})

vim.keymap.set('n', '<leader>tf', function()
    test.run.run(vim.fn.expand('%s'))
end, { desc = 'Run all tests in file', silent = true })

vim.keymap.set('n', '<leader>tr', function()
    test.run.run()
end, { desc = 'Run the selected test', silent = true })

--   cmd = { "Neotest" },
--   keys = {
--     {
--       "<leader>tf",
--       function()
--         require("neotest").run.run(vim.fn.expand("%"))
--       end,
--     },
--
--     {
--       "<leader>tr",
--       function()
--         require("neotest").run.run()
--       end,
--     },
--     { "<leader>ts", ":Neotest summary<cr>", { silent = true } },
--     { "<leader>to", ":Neotest output<cr>",  { silent = true } },
--   },
--   config = function()
--     ---@diagnostic disable-next-line: missing-fields
--     require("neotest").setup({
--       adapters = {
--         require("neotest-go")({
--           recursive_run = true,
--         }),
--         require("neotest-jest")({
--           jestCommand = "pnpm test --",
--         }),
--         require("neotest-vitest")
--       },
--     })
--   end,
-- }
