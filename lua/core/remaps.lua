local keymap = vim.keymap
local opts = {
    silent = true,
    noremap = true
}

keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

keymap.set("n", "-", ":Oil<cr>", opts)

keymap.set("v", "J", ":m '>+1<cr>gv=gv", opts)
keymap.set("v", "K", ":m '<-2<cr>gv=gv", opts)

keymap.set("n", "<A-v>", ":vsplit<cr>", opts)
keymap.set("n", "<A-h>", ":split<cr>", opts)
keymap.set("n", "<A-c>", ":close<cr>", opts)
