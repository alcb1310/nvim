-- Lua
vim.cmd([[colorscheme tokyonight]])

require("tokyonight").setup({
	style = "storm",
	terminal_colors = true,
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		sidebars = "dark",
		floats = "dark",
	},
	on_colors = function(colors)
		colors.error = "#ff0000"
	end,
})
