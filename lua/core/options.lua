-- -- 1. important

-- 2. moving around

-- 3. tags

-- 4. displaying text
vim.o.scrolloff = 8           -- Number of lines visible when scrolling
vim.o.wrap = false            -- Never wrap lines of text
vim.o.number = true           -- Show line numbers
vim.o.relativenumber = true   -- Show realtive line numbers

-- 5. syntax highlighting and spelling
vim.o.hlsearch = false        -- Remove highlight when search has finished
vim.o.termguicolors = true    -- Enhanced colors
vim.o.cursorline = true       -- Highlight current line for easier visualization
vim.o.colorcolumn = '100'     -- Highlight the specified column as a reference

-- 6. multiple windows
vim.o.splitbelow = true       -- When split add pane below the one is being edited
vim.o.splitright = true       -- When vertical split add pane to the right of the one being edited

-- 7. multiple tab pages
-- 8. terminal
-- 9. using the mouse
-- vim.o.mouse = ''              -- Disable mouse use

-- 10. messages and info
-- 11. selecting text

-- 12 editing text
vim.o.undodir = os.getenv('HOME') .. '/.local/state/nvim/undodir' -- Location for the undo files
vim.o.undofile = true         -- When on, Vim autmatically saves undo history

-- 13. tabs and indenting
vim.o.tabstop = 4             -- Number of spaces a `tab` stands for
vim.o.shiftwidth = 4          -- Number of spaces for (auto)indent
vim.o.expandtab = true        -- Replace `tab` characters with the propper amount of spaces
vim.o.autoindent = true       -- Copy indent from current line when starting a new one
vim.o.smartindent = true      -- Do smart autoindenting when starting a new line

-- 14. folding
-- 15. diff mode
-- 16. mapping
-- 17. reading and writing files
-- 18. the swap file
-- 19. command line editing
-- 20. executing external commands
vim.o.grepprg = 'rg --vimgrep --uu'  -- Program to use when running the :grep command

-- 21. running make and jumping to errors

-- 24. various
vim.o.signcolumn = 'yes'      -- Show sign column to display diagnostics and information
vim.o.winborder = 'rounded'   -- Border style of floating windows
