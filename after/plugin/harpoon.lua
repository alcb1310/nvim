local harpoon = require 'harpoon'

harpoon.setup()

local mark = require 'harpoon.mark'
local ui = require 'harpoon.ui'

vim.keymap.set('n', '<leader>a', mark.add_file, { desc = 'Adds a file to harpoon', silent = true })
vim.keymap.set('n', '<c-e>', ui.toggle_quick_menu, { desc = 'Shows harpoon menu', silent = true })

vim.keymap.set('n', '<leader>h', function() ui.nav_file(1) end,
    { desc = 'navigates to first harpoon file', silent = true })
vim.keymap.set('n', '<leader>j', function() ui.nav_file(2) end,
    { desc = 'navigates to second harpoon file', silent = true })
vim.keymap.set('n', '<leader>k', function() ui.nav_file(3) end,
    { desc = 'navigates to third harpoon file', silent = true })
vim.keymap.set('n', '<leader>l', function() ui.nav_file(4) end,
    { desc = 'navigates to fourth harpoon file', silent = true })
