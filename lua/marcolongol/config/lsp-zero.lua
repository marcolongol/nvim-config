-- LSP-Zero configuration
--------------------------------------------------
local M = {}
local lsp = require("lsp-zero")

local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
local lsp_format_on_save = function(bufnr)
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function()
            vim.lsp.buf.format()
        end,
    })
end

function M.setup()
    lsp.preset('recommended')

    lsp.ensure_installed({
        'tsserver',
        'eslint',
        'lua_ls',
        'pyright',
        'vimls',
        'bashls',
        'jsonls',
        'yamlls',
        'dockerls',
        -- 'html',
        -- 'cssls',
        -- 'cmake',
        -- 'rust_analyzer',
    })

    lsp.nvim_workspace()

    lsp.on_attach(function(client, bufnr)
        lsp_format_on_save(bufnr)
    end)

    lsp.setup()
end

return M
