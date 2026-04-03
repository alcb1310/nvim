local ensureInstalled = {
    'c',
    'go',
    'javascript',
    'jsx',
    'lua',
    'markdown',
    'markdown_inline',
    'query',
    'sql',
    'tsx',
    'typescript',
    'vim',
    'vimdoc',
}
local alreadyInstalled = require('nvim-treesitter.config').get_installed()
local parsersToInstall = vim.iter(ensureInstalled)
    :filter(function(parser)
        return not vim.tbl_contains(alreadyInstalled, parser)
    end)
    :totable()
require('nvim-treesitter').install(parsersToInstall)
