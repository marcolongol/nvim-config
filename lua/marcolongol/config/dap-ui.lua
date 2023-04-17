-- dap-ui configuration
--------------------------------------------------
local M = {}

local dap_ui = require("dapui")

function M.setup()
    dap_ui.setup({
        icons = {
            expanded = "▾",
            collapsed = "▸",
        },
        mappings = {
            -- Use a table to apply multiple mappings
            expand = { "<CR>", "<2-LeftMouse>" },
            open = "o",
            remove = "d",
            edit = "e",
            repl = "r",
        },
        sidebar = {
            elements = {
                -- You can change the order of elements in the sidebar
                {
                    id = "scopes",
                    size = 0.25, -- Can be float or integer > 1
                },
                {
                    id = "breakpoints",
                    size = 0.25,
                },
                {
                    id = "stacks",
                    size = 0.25,
                },
                {
                    id = "watches",
                    size = 0.25,
                },
            },
            size = 40,
            position = "left", -- Can be "left" or "right"
        },
        tray = {
            elements = {
                {
                    id = "repl",
                    size = 10,
                },
            },
            size = 10,
            position = "bottom", -- Can be "bottom" or "top"
        },
        floating = {
            max_height = nil, -- These can be integers or a float between 0 and 1.
            max_width = nil, -- Floats will be treated as percentage of your screen.
            min_height = 40,
            min_width = 50,
        },
        windows = { indent = 1 },
    })
end

return M
