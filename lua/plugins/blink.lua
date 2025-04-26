return {
  'saghen/blink.cmp',
  dependencies = {
    'Kaiser-Yang/blink-cmp-avante',
    'rafamadriz/friendly-snippets'
  },
  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = 'default' },
    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = {
      list = {
        selection = {
          preselect = false,
          auto_insert = false,
        },
        max_items = 10,
      },
      documentation = {
        auto_show = true
      }
    },
    sources = {
      default = { 'avante', 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
        avante = {
          module = 'blink-cmp-avante',
          name = 'Avante',
          opts = {
            -- options for blink-cmp-avante
          }
        }
      },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" },
  config = function(_, opts)
    require('blink.cmp').setup(opts)

    vim.lsp.config('*', { capabilities = require('blink.cmp').get_lsp_capabilities(nil, true) })
  end
}
