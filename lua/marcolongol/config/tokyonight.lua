-- Tokyonight configuration
--------------------------------------------------
local M = {}

local tn = require("tokyonight")

function M.setup()
    tn.setup({
        style = "storm",
        transparent = true,
        terminal_colors = true,
        sidebars = { "qf", "vista_kind", "terminal", "packer" },
        styles = {
            comments = { italic = true },
            keywords = { italic = true },
            functions = { italic = true },
            strings = { italic = true },
            variables = { italic = true },
        },
        hide_inactive_statusline = false,
        lualine_bold = false,
        on_colors = function(colors)
            colors.hint = "#FFA500"
            colors.error = "#FF0000"
        end,
        on_highlights = function(highlights, colors)
        end,
    })
end

return M
