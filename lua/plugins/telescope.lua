-- plugins/telescope.lua:
return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        'nvim-telescope/telescope-ui-select.nvim',
    },
    cmd = { "Telescope" },
    keys = {
        { '<leader>ff', ':Telescope find_files', { desc = 'Telescope find files' } },
        { '<leader>fg', ':Telescope live_grep',  { desc = 'Telescope live grep' } },
        { '<leader>fb', ':Telescope buffres',    { desc = 'Telescope buffers' } },
        { '<leader>fh', ':Telescope help_tags',  { desc = 'Telescope help tags' } },
    },
    config = function()
        require('telescope').setup {
            extensions = {
                fzf = {
                    fuzzy = true,                   -- false will only do exact matching
                    override_generic_sorter = true, -- override the generic sorter
                    override_file_sorter = true,    -- override the file sorter
                    case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                },
                ['ui-select'] = {
                    require 'telescope.themes'.get_dropdown({})
                }
            },
            pickers = {
                find_files = {
                    theme = 'ivy',
                },
            },
        }

        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

        vim.keymap.set('n', '<leader>en', function()
            builtin.find_files({
                cwd = vim.fn.stdpath('config')
            })
        end, { desc = 'Find neovim config files' })
    end
}
