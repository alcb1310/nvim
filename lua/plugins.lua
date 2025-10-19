vim.pack.add({
    --common
    { src = "https://github.com/antoinemadec/FixCursorHold.nvim" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = 'https://github.com/nvim-mini/mini.icons' },

    --colorscheme
    { src = 'https://github.com/rebelot/kanagawa.nvim' },

    -- treesitter
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter-context' },

    -- git
    { src = 'https://github.com/lewis6991/gitsigns.nvim' },
    { src = 'https://github.com/tpope/vim-fugitive' },

    -- navigation
    { src = 'https://github.com/ThePrimeagen/harpoon',                   version = 'harpoon2' },
    { src = 'https://github.com/prichrd/netrw.nvim' },
    { src = 'https://github.com/folke/flash.nvim' },
    { src = 'https://github.com/ibhagwan/fzf-lua' },
    -- { src = 'https://github.com/benomahony/oil-git.nvim' },
    -- { src = 'https://github.com/stevearc/oil.nvim' },

    -- testing
    { src = "https://github.com/fredrikaverpil/neotest-golang" },
    { src = "https://github.com/nvim-neotest/neotest" },
    { src = "https://github.com/nvim-neotest/nvim-nio" },

    -- debugging
    { src = 'https://github.com/julianolf/nvim-dap-lldb' },
    { src = 'https://github.com/leoluz/nvim-dap-go' },
    { src = 'https://github.com/mfussenegger/nvim-dap' },
    { src = 'https://github.com/nvim-neotest/nvim-nio' },
    { src = 'https://github.com/rcarriga/nvim-dap-ui' },
    { src = 'https://github.com/theHamsta/nvim-dap-virtual-text' },

    -- artificial intelligence
    { src = 'https://github.com/Exafunction/windsurf.vim' },

    -- comments
    { src = 'https://github.com/folke/todo-comments.nvim' },

    -- undo
    { src = 'https://github.com/mbbill/undotree' },
})

vim.api.nvim_create_autocmd('PackChanged', {
    desc = 'Update treesitter configs on pack update',
    group = vim.api.nvim_create_augroup('alcb1310/ts-pack', { clear = true }),
    callback = function()
        vim.cmd [[TSUpdate]]
    end
})
