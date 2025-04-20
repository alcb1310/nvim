return {
  "srt0/codescope.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("codescope").setup({
      transparent = true,
    })

    vim.cmd.colorscheme("codescope")
  end,
}
