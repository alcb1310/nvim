local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

opt.number = true
opt.relativenumber = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
opt.signcolumn = "yes"

-- Set 2 spaces for tab
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.incsearch = true
opt.hlsearch = false

opt.scrolloff = 8
