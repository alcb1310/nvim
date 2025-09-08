require('mini.icons').setup()
require 'oil'.setup({
    defaulg_file_explorer = true,
    columns = {
        "icon",
    },
    skip_confirm_for_simple_edits = false,
    view_options = {
        show_hidden = false,
    },
    float = {
        preview_split = 'right',
        max_width = 0.7,
        max_height = 0.7,
        border = "rounded",
        -- optionally override the oil buffers window title with custom function: fun(winid: integer): string
        get_win_title = nil,
    },
})

require("oil-git").setup({
    highlights = {
        OilGitAdded = { fg = "#a6e3a1" }, -- green
        OilGitRenamed = { fg = "#f9e2af" }, -- yellow
        -- OilGitModified = { fg = "#f9e2af" }, -- yellow
        OilGitModified = { fg = "#cba6f7" }, -- purple
        OilGitUntracked = { fg = "#89b4fa" }, -- blue
        OilGitIgnored = { fg = "#6c7086" }, -- gray
    }
})
