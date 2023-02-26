local map = vim.keymap

vim.g.mapleader = " "

-- Shows file directory
map.set("n", "<leader>pv", vim.cmd.Ex)
--vim.keymap.set("n", "<leader>e", ":Lex 30<CR>")

-- Moves the selected lines one line in the specified direction
map.set("v", "J", ":m '>+1<CR>gv=gv") -- move down
map.set("v", "K", ":m '<-2<CR>gv=gv") -- move up

-- Jumps the cursor one page in the specified direction
-- Always center the cursor on the view after the Jumps
map.set("n", "<C-d>", "<C-d>zz") -- jump down
map.set("n", "<C-u>", "<C-u>zz") -- jump up

-- Pastes the clipboard without changing it
map.set("n", "<leader>p", '"_dP')

-- Copies to the system clipboard
map.set("n", "<leader>y", '"+y')
map.set("v", "<leader>y", '"+y')
map.set("n", "<leader>Y", '"x+Y')

-- Ranger
map.set("n", "<C-r>", ":RnvimrToggle<CR>")
map.set("v", "<C-r>", ":RnvimrToggle<CR>")
map.set("i", "<C-r>", "<ESC>:RnvimrToggle<CR>")

-- NERDTree
map.set("n", "<leader>e", ":NvimTreeToggle<CR>")
map.set("v", "<leader>e", "<ESC>:NvimTreeToggle<CR>")

-- Octo
map.set("n", "<leader>pr", ":Octo pr list<CR>")
map.set("n", "<leader>il", ":Octo issue list<CR>")
map.set("n", "<leader>ic", ":Octo issue create<CR>")
map.set("v", "<leader>pr", ":Octo pr list<CR>")
map.set("v", "<leader>il", ":Octo issue list<CR>")
map.set("v", "<leader>ic", ":Octo issue create<CR>")

-- Search
map.set("n", "<leader>s", ":%s///g<LEFT><LEFT><LEFT>")
