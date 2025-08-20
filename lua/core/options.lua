-- Here we will be defining some Neovim configuration options

-- Basic settings
vim.o.number = true         -- shows line numbers
vim.o.relativenumber = true -- shows line number relative to the current line
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.o.wrap = false
vim.o.scrolloff = 10

-- Tab behaviour
vim.o.tabstop = 4        -- number of spaces a `tab` stands for
vim.o.shiftwidth = 4     -- number of spaces for (auto)indent
vim.o.autoindent = true  -- Copy indent form current line when starting a new one
vim.o.smartindent = true -- do smart autoindenting when startin a new line
vim.o.expandtab = true   -- replace tab characters with the propper amount of spaces

-- Search configuration
vim.o.incsearch = true -- Highlight the text being searched
vim.o.hlsearch = false -- Remove highlight when search has finished
vim.o.smartcase = true
vim.o.ignorecase = true

-- Completion options
vim.o.completeopt = 'fuzzy,menuone,noselect,popup'
vim.o.winborder = 'rounded'
vim.o.pumheight = 15
vim.o.pumblend = 7

-- Visual settings
vim.o.termguicolors = true
vim.o.colorcolumn = '100'

-- Behavior settings
vim.opt.path:append('**') -- Include subdirectories when using the find command
vim.o.signcolumn = 'yes'
