-- Which-Key configuration
--------------------------------------------------
local M = {}

local which_key = require('which-key')

function M.setup()
    which_key.setup({
        plugins = {
            marks = true,
            registers = true,
            spelling = {
                enabled = true,
                suggestions = 20,
            },
            presets = {
                operators = false,
                motions = false,
                text_objects = false,
                windows = false,
                nav = false,
                z = false,
                g = false,
            },
        },
        window = {
            border = 'single',
            position = 'bottom',
            margin = { 1, 0, 1, 0 },
            padding = { 2, 2, 2, 2 },
        },
        layout = {
            height = { min = 4, max = 25 },
            width = { min = 20, max = 50 },
            spacing = 3,
        },
        ignore_missing = false,
        hidden = { '<silent>', '<cmd>', '<Cmd>', '<CR>', 'call', 'lua', '^:' },
        show_help = true,
        triggers = 'auto',
        triggers_blacklist = {
            i = { 'j', 'k' },
            v = { 'j', 'k' },
        },
    })
end

return M
