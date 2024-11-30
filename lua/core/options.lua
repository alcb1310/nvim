vim.g.mapleader = " "
local opt = vim.opt

 -- Display linenumbers
opt.relativenumber = true
opt.number = true

-- Tab configuration
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- Beter colors definition
opt.termguicolors = true

-- Search highlighting
opt.hlsearch=false
opt.incsearch = true
