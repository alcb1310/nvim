-- 1 important
-- vim.opt.compatible = true

-- 2 moving around
vim.opt.path:append('**') -- Include subdirectories when using the find command
vim.o.incsearch = true    -- Highlight the text being searched
vim.o.ignorecase = true
vim.o.smartcase = true

-- 3 tags

-- 4 displaying text
vim.o.scrolloff = 10
vim.o.wrap = false
vim.o.number = true         -- shows line numbers
vim.o.relativenumber = true -- shows line number relative to the current line

-- 5 syntax highlighting and spelling
vim.o.hlsearch = false -- Remove highlight when search has finished
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.o.colorcolumn = '100'

-- 6 multiple windows
vim.o.splitbelow = true
vim.o.splitright = true

-- 7 multiple tab pages
vim.o.showtabline = 0

-- 8 terminal

-- 9 using the mouse
vim.o.mouse = ""

-- 10 messages and info

-- 11 selectring text

-- 12 editing text
vim.o.formatexpr = ''
vim.o.completeopt = 'fuzzy,menuone,noselect,popup'
vim.o.pumheight = 15
vim.o.pumblend = 7
vim.o.undodir = os.getenv('HOME') .. '/.local/state/nvim/undodir'
vim.o.undofile = true

-- 13 tabs and indenting
vim.o.tabstop = 4        -- number of spaces a `tab` stands for
vim.o.shiftwidth = 4     -- number of spaces for (auto)indent
vim.o.expandtab = true   -- replace tab characters with the propper amount of spaces
vim.o.autoindent = true  -- Copy indent form current line when starting a new one
vim.o.smartindent = true -- do smart autoindenting when startin a new line

-- 14 folding

-- 15 diff mode

-- 16 mapping

-- 17 reading and writing files
vim.o.backup = false

-- 18 the swap file
vim.o.swapfile = false

-- 19 command line editing
vim.o.wildmode = "longest:full,full"
vim.o.wildignore = '*.o,.git,bin'
vim.o.wildmenu = true

-- 20 executing external commands

-- 21 running make and jumping to errors
vim.o.grepprg = "rg --vimgrep -uu"

-- 22 language specific

-- 23 multi-byte characters

-- 24 various
vim.o.signcolumn = 'yes'
vim.o.winborder = 'rounded'
