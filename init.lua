-- Define the leader key, this should always be the very first thing you add to your
-- Neovim configuration files, by default Neovim uses \ as the leader.
-- Remember that any keymaps you define prior to assigning a leader key will be using
-- the prior value for it
vim.g.mapleader = " "
vim.g.localmapleader = " "

-- Here we will be defining some Neovim configuration options

-- Line numbering
vim.o.number = true -- shows line numbers
vim.o.relativenumber = true -- shows line number relative to the current line

-- Tab behaviour
vim.o.tabstop = 4 -- number of spaces a `tab` stands for
vim.o.shiftwidth = 4 -- number of spaces for (auto)indent
vim.o.autoindent = true -- Copy indent form current line when starting a new one
vim.o.smartindent = true  -- do smart autoindenting when startin a new line
vim.o.expandtab = true -- replace tab characters with the propper amount of spaces

-- Search configuration
vim.o.incsearch = true -- Highlight the text being searched
vim.o.hlsearch = false -- Remove highlight when search has finished

-- Completion options
vim.o.completeopt = 'fuzzy,menuone,noselect,popup'

-- Here we will be defining some global keymaps

vim.keymap.set('n', '-', vim.cmd.Ex, { desc = 'Open netrw file browser' })
vim.keymap.set('n', '<leader>so', '<cmd>update<cr><cmd>source<cr>', { desc = 'saves and sources the current file', silent = true })
vim.keymap.set('i', '<M-i>', '<C-x><C-o>', { desc = 'Displays completion menu' })
