-- LSP configuration
--------------------------------------------------
local M = {}

local lspconfig = require("lspconfig")
local configs = require("lspconfig/configs")
local server_list = require("marcolongol.config.mason-lspconfig").server_list

--------------------------------------------------
-- LSP configuration
--------------------------------------------------
ENABLE_FORMAT_ON_SAVE = true
ENABLE_HOVER_ON_CURSOR = false

local lsp_flags = {
    debounce_text_changes = 150,
}

-- Custom LSP signs
local signs = { Error = "❌", Warn = "⚠️ ", Hint = "💡", Info = "ℹ️" }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

local function on_attach(client, bufnr)
    if ENABLE_FORMAT_ON_SAVE then
        vim.api.nvim_command("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 100)")
    end

    if vim.bo[bufnr].buftype ~= "" or vim.bo[bufnr].filetype == "helm" then
        vim.diagnostic.disable(bufnr)
        vim.defer_fn(function()
            vim.diagnostic.reset(nil, bufnr)
        end, 1000)
    end

    -- Enable hover on cursor
    if ENABLE_HOVER_ON_CURSOR then
        -- call to hover() should be delayed to prevent cursor from jumping
        vim.api.nvim_command("autocmd CursorHold <buffer> lua vim.defer_fn(function() vim.lsp.buf.hover() end, 2500)")
    end

    -- Keymaps
    local opts = { noremap = true, silent = true }
    nnoremap("gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    nnoremap("gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    nnoremap("K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    nnoremap("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    nnoremap("<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    nnoremap("<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
    nnoremap("<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
    nnoremap("<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
    nnoremap("<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
    nnoremap("<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
    nnoremap("<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    nnoremap("gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    nnoremap("<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
    nnoremap("[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
    nnoremap("]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
    nnoremap("<space>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
    nnoremap("<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end

--------------------------------------------------
-- Language Servers
--------------------------------------------------
function M.setup()
    -- LSP servers
    for _, server in pairs(server_list) do
        lspconfig[server].setup({
            on_attach = on_attach,
            flags = lsp_flags,
        })
    end
end

return M
