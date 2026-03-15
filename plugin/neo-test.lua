vim.pack.add({
    { src = "https://github.com/fredrikaverpil/neotest-golang" },
    { src = "https://github.com/nvim-neotest/neotest" },
    { src = "https://github.com/nvim-neotest/nvim-nio" },
    { src = "https://github.com/antoinemadec/FixCursorHold.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
})

local test = require 'neotest'

test.setup({
    adapters = {
        require("neotest-golang")({
            recursive_run = true,
        }),
        -- require("neotest-jest")({
        --     jestCommand = "pnpm test --",
        -- }),
        -- require("neotest-vitest")
    },
})

vim.keymap.set('n', '<leader>tf', function()
    test.run.run(vim.fn.expand('%'))
end, { desc = 'Run all tests in file', silent = true })

vim.keymap.set('n', '<leader>tr', function()
    test.run.run()
end, { desc = 'Run the selected test', silent = true })
vim.keymap.set('n', '<leader>ts', '<cmd>Neotest summary<cr>', { desc = 'Show test summary', silent = true })
vim.keymap.set('n', '<leader>to', '<cmd>Neotest output<cr>', { desc = 'Show test output', silent = true })
