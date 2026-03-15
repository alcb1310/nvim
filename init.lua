-- Define the leader key, this should always be the very first thing you add to your
-- Neovim configuration files, by default Neovim uses \ as the leader.
-- Remember that any keymaps you define prior to assigning a leader key will be using
-- the prior value for it
vim.g.mapleader = " "
vim.g.localmapleader = " "

---@param directory string
local function load_modules(directory)
    vim.iter(vim.api.nvim_get_runtime_file('lua/' .. directory .. '/*.lua', true))
        :map(function(file)
            local name = vim.fn.fnamemodify(file, ':t:r')
            require(directory .. '.' .. name)
        end)
end

load_modules('core')
