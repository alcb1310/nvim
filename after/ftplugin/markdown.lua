vim.pack.add({
    { src = 'https://github.com/alcb1310/present.nvim' },
})

vim.keymap.set('n', "<leader>pt", function()
    require("present").start_presentation {}
end, { desc = 'presentation', silent = true })
