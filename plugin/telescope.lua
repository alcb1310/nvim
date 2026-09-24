vim.pack.add({
	{ src = 'https://github.com/nvim-telescope/telescope.nvim' },
	{ src = 'https://github.com/nvim-telescope/telescope-fzf-native.nvim' },
	{ src = 'https://github.com/nvim-lua/plenary.nvim' },
	{ src = 'https://github.com/nvim-tree/nvim-web-devicons' }
})

-- Use this to add more results without clearing the trouble list

require('telescope').setup {
	defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
		mappings = {
			i = {
				-- map actions.which_key to <C-h> (default: <C-/>)
				-- actions.which_key shows the mappings for your picker,
				-- e.g. git_{create, delete, ...}_branch for the git_branches picker
				["<C-h>"] = "which_key",
			}
		},
		layout_strategy = "horizontal",
		layout_conoig = {
			horizontal = {
				prompt_position = "top",
				preview_width = 0.55,
				results_width = 0.8
			}
		},
		sorting_strategy = "ascending",
		prompt_prefix = " ",
		prompt_position = "top",
		color_devicons = true, -- Set to true to show icons
		disable_devicons = false -- Ensure this is false
	},
	pickers = {
		-- Default configuration for builtin pickers goes here:
		--
		-- picker_name = {
		--   picker_config_key = value,
		--   ...
		-- }
		-- Now the picker_config_key will be applied every time you call this
		-- builtin picker
		find_files = {
			layout_strategy = "horizontal",
			layout_config = {
				horizontal = {
					prompt_position = "top",
					preview_width = 0.55,
					results_width = 0.8
				}
			}
		},
		-- buffers = {
		-- 	theme = "ivy"
		-- }
	},
	extensions = {
		-- Your extension configuration goes here:
		-- extension_name = {
		--   extension_config_key = value,
		-- }
		-- please take a look at the readme of the extension you want to configure
	}
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Telescope help tags' })
