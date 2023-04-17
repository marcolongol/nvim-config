-- DAP configuration
--------------------------------------------------
local M = {}

local dap, dap_ui = require("dap"), require("dapui")

function M.setup()
    dap.listeners.after.event_initialized["dapui_config"] = function()
        dap_ui.open()
    end

    dap.listeners.after.terminated["dapui_config"] = function()
        dap_ui.open()
    end

    dap.listeners.after.closed["dapui_config"] = function()
        dap_ui.open()
    end

    -- python
    ------------------
    dap.adapters.python = {
        type = "executable",
        command = "python",
        args = { "-m", "debugpy.adapter" },
    }

    dap.configurations.python = {
        {
            type = "python",
            request = "launch",
            name = "Launch file",
            program = "${file}",
            pythonPath = function()
                return vim.fn.exepath("python")
            end,
            console = "integratedTerminal"
        },
    }

    -- remaps
    ------------------
    vim.api.nvim_set_keymap("n", "<F9>", ":lua require'dap'.toggle_breakpoint()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap(
        "n",
        "<F8>",
        ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
        { noremap = true, silent = true }
    )
    vim.api.nvim_set_keymap("n", "<F5>", ":lua require'dap'.continue()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<F10>", ":lua require'dap'.step_over()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<S-F10>", ":lua require'dap'.step_into()<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>db", ":lua require'dap'.repl.open()<CR>", { noremap = true, silent = true })
end

return M
