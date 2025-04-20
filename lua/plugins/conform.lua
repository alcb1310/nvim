return {
  'stevearc/conform.nvim',
  opts = {},
  config = function()
    require("conform").setup({
      formatters = {
        biome = {
          require_cwd = true,
        },
      },
      formatters_by_ft = {
        lua = { "stylua" },
        go = {
          "gofumpt",           -- Install go install mvdan.cc/gofumpt@latest
          "goimports-reviser", -- Install go install -v github.com/incu6us/goimports-reviser/v3@latest
        },
        javascript = { "biome" },
        typescript = { "biome", "prettier", stop_after_first = true },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback"
      }
    })
  end
}
