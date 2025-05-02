return {
  'echasnovski/mini.statusline',
  lazy = false,
  config = function()
    require('mini.statusline').setup({
      use_icons = true
    })
  end
}
