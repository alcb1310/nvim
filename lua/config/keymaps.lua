vim.g.mapleader = " "

vim.keymap.set("n", "-", vim.cmd.Oil, { desc = "Open file explorer" })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader><leader>", ":source %<cr>", { desc = "source the file", silent = true })

vim.keymap.set("n", "<leader>tl", "<cmd>PlenaryBustedFile %<cr>")

vim.keymap.set("n", "gh", "<cmd>diffget //2<cr>", { silent = true })
vim.keymap.set("n", "gl", "<cmd>diffget //3<cr>", { silent = true })
