-- Trouble configuration
--------------------------------------------------
local M = {}

local trouble = require("trouble")
local nnoremap = require("marcolongol.utils.utils").nnoremap

function M.setup()
    -- Setup
    trouble.setup({
        auto_open = false,
        auto_close = true,
        auto_preview = true,
        auto_fold = true,
        use_diagnostic_signs = true,
    })

    -- Keymaps
    nnoremap("<leader>xx", "<cmd>TroubleToggle<cr>")
    nnoremap("<leader>xw", "<cmd>TroubleToggle lsp_workspace_diagnostics<cr>")
    nnoremap("<leader>xd", "<cmd>TroubleToggle lsp_document_diagnostics<cr>")
    nnoremap("<leader>xl", "<cmd>TroubleToggle loclist<cr>")
    nnoremap("<leader>xq", "<cmd>TroubleToggle quickfix<cr>")
    nnoremap("gR", "<cmd>TroubleToggle lsp_references<cr>")
end

return M
