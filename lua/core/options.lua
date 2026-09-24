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
