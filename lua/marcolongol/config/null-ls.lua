-- null-ls configuration
--------------------------------------------------
local M = {}

local nulls = require("null-ls")

local formatters_list = require("marcolongol.config.mason-lspconfig").formatters_list
-- local formatters = { "prettierd", "stylua", "black", "isort", "rustfmt" }

local linters_list = require("marcolongol.config.mason-lspconfig").linters_list
-- local linters = { "eslint", "flake8", "shellcheck", "vint", "rust_analyzer" }

-- merge formatters and linters
local sources = function()
    local sources = {}
    for _, formatter in ipairs(formatters_list) do
        table.insert(sources, require("null-ls").builtins.formatting[formatter])
    end
    for _, linter in ipairs(linters_list) do
        table.insert(sources, require("null-ls").builtins.diagnostics[linter])
    end
    return sources
end

function M.setup()
    nulls.setup({
        sources = sources(),
    })
end

M.setup()

return M
