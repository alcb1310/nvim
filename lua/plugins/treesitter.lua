return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = {
        'BufNewFile',
        'BufReadPost',
    },
    config = function () 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "html",
                "lua",
                "vim",
                "vimdoc",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end
}
