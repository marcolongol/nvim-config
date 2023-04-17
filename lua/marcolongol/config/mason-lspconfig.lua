-- Mason LSPConfig configuration
--------------------------------------------------
local M = {}

local mason_lspconfig = require("mason-lspconfig")

M.server_list = {
    "bashls",
    -- "clangd",
    "cmake",
    -- "cssls",
    "dockerls",
    -- "emmet_ls",
    "eslint",
    -- "golangci_lint_ls",
    -- "gopls",
    -- "graphql",
    "html",
    -- "jdtls",
    "jsonls",
    -- "julials",
    "lemminx",
    "marksman",
    "powershell_es",
    "pyright",
    -- "sqlls",
    "stylelint_lsp",
    "lua_ls",
    "tsserver",
    "vimls",
    "yamlls",
}

M.formatters_list = {
    -- "golines",
    -- "gofumpt",
    -- "fixjson",
    "yamlfmt",
    -- "goimports",
    -- "autopep8",
    "black",
    -- "isort",
    -- "markdownlint",
    -- "prettierd",
    "stylua",
}

M.linters_list = {
    -- "golangci_lint",
    -- "eslint_d",
    -- "flake8",
    -- "markdownlint",
    -- "prettierd",
    -- "shellcheck",
    -- "stylelint",
    "selene",
    "ruff"
}

-- Merge servers, formatters and linters into a single table
-- to be used by the Mason LSPConfig plugin

M.config = vim.tbl_extend("force", M.server_list, M.formatters_list, M.linters_list)

function M.setup()
    mason_lspconfig.setup({
        ensure_installed = M.config,
        automatic_installation = true,
    })
end

return M
