return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = {{ "echasnovski/mini.icons", opts = {} }},
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {},
  cmd = 'FzfLua',
  keys = {
    { '<leader>sf', '<cmd>FzfLua files<cr>', desc= '[S]earch [F]iles'},
    { '<leader>sg', '<cmd>FzfLua live_grep<cr>', desc= '[S]earch [G]rep'},
    { '<leader>sh', '<cmd>FzfLua help_tags<cr>', desc= '[S]earch [H]elp'},
    { '<leader>gf', '<cmd>FzfLua git_files<cr>', desc= '[G]it [F]iles'},
    { '<leader>gb', '<cmd>FzfLua git_blame<cr>', desc= '[G]it [B]lame'},
  },
}
