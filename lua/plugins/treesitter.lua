return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = {
        'BufNewFile',
        'BufReadPost',
    },
    dependencies = {
        {
            'nvim-treesitter/nvim-treesitter-context',
            config = function()
                require 'treesitter-context'.setup {
                    enable = true,            -- Enable this plugin (Can be enabled/disabled later via commands)
                    multiwindow = false,      -- Enable multiwindow support.
                    max_lines = 0,            -- How many lines the window should span. Values <= 0 mean no limit.
                    min_window_height = 0,    -- Minimum editor window height to enable context. Values <= 0 mean no limit.
                    line_numbers = true,
                    multiline_threshold = 20, -- Maximum number of lines to show for a single context
                    trim_scope = 'outer',     -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
                    mode = 'cursor',          -- Line used to calculate context. Choices: 'cursor', 'topline'
                    separator = nil,
                    zindex = 20,              -- The Z-index of the context window
                    on_attach = nil,          -- (fun(buf: integer): boolean) return false to disable attaching
                }
            end
        },
        {
            "nvim-treesitter/nvim-treesitter-textobjects",
            config = function()
                ---@diagnostic disable-next-line: missing-fields
                require 'nvim-treesitter.configs'.setup {
                    textobjects = {
                        select = {
                            enable = true,

                            lookahead = true,

                            keymaps = {
                                ["af"] = "@function.outer",
                                ["if"] = "@function.inner",
                                ["ac"] = "@class.outer",
                                ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                                ["as"] = { query = "@local.scope", query_group = "locals", desc = "Select language scope" },
                            },
                            selection_modes = {
                                ['@parameter.outer'] = 'v', -- charwise
                                ['@function.outer'] = 'V',  -- linewise
                                ['@class.outer'] = '<c-v>', -- blockwise
                            },
                            include_surrounding_whitespace = true,
                        },
                    },
                }
            end
        },
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
