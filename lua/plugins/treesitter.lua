vim.pack.add({
    { src = 'https://github.com/nvim-treesitter/nvim-treesitter' }
})

require 'nvim-treesitter.configs'.setup({
    ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'markdown', 'markdown_inline' },
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        -- additional_vim_regex_highlighting = false
    }
})

vim.api.nvim_create_autocmd('PackChanged', {
    desc = 'Update treesitter configs on pack update',
    group = vim.api.nvim_create_augroup('alcb1310/ts-pack', { clear = true }),
    callback = function()
        vim.cmd [[TSUpdate]]
    end
})
