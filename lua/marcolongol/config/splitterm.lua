-- split-term.vim configuration
--------------------------------------------------
local M = {}

function M.setup()
    -- split-term
    vim.g.split_term_default_position = "bottom"
    vim.g.split_term_default_size = 20
    vim.g.split_term_default_command = "pwsh"
    vim.g.split_term_default_shell = "pwsh"
    vim.g.split_term_default_shell_args = "-NoLogo -NoProfile -Command"
    vim.g.split_term_default_shell_cmd = "Start-Process"
    vim.g.split_term_default_shell_cmd_args = "-NoNewWindow"
end

return M
