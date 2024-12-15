return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = {
        'BufNewFile',
        'BufReadPost',
    },
    config = function()
        local configs = require("nvim-treesitter.configs")

        ---@diagnostic disable-next-line: missing-fields
        configs.setup({
            ensure_installed = {
                "go",
                "html",
                "lua",
                "vim",
                "vimdoc",
            },
            auto_install = false,
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
