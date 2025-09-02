vim.pack.add({
    { src = "https://github.com/antoinemadec/FixCursorHold.nvim" },
    { src = "https://github.com/fredrikaverpil/neotest-golang" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-neotest/neotest" },
    { src = "https://github.com/nvim-neotest/nvim-nio" },
    { src = 'https://github.com/folke/todo-comments.nvim' },
    { src = 'https://github.com/ibhagwan/fzf-lua' },
    { src = 'https://github.com/julianolf/nvim-dap-lldb' },
    { src = 'https://github.com/leoluz/nvim-dap-go' },
    { src = 'https://github.com/lewis6991/gitsigns.nvim' },
    { src = 'https://github.com/mfussenegger/nvim-dap' },
    { src = 'https://github.com/nvim-lua/plenary.nvim' },
    { src = 'https://github.com/nvim-neotest/nvim-nio' },
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
    { src = 'https://github.com/rcarriga/nvim-dap-ui' },
    { src = 'https://github.com/rebelot/kanagawa.nvim' },
    { src = 'https://github.com/theHamsta/nvim-dap-virtual-text' },
})

vim.api.nvim_create_autocmd('PackChanged', {
    desc = 'Update treesitter configs on pack update',
    group = vim.api.nvim_create_augroup('alcb1310/ts-pack', { clear = true }),
    callback = function()
        vim.cmd [[TSUpdate]]
    end
})

-- Default options:
require 'kanagawa'.setup({
    compile = false,  -- enable compiling the colorscheme
    undercurl = true, -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = true,    -- do not set background color
    dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
    terminalColors = true, -- define vim.g.terminal_color_{0,17}
    colors = {             -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    theme = "wave",    -- Load "wave" theme
    background = {     -- map the value of 'background' option to a theme
        dark = "wave", -- try "dragon" !
        light = "lotus"
    },
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
