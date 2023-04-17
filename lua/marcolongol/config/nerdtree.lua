-- NERDTree configuration
--------------------------------------------------
local M = {}

local nnoremap = require("marcolongol.utils.utils").nnoremap

function M.setup()
    -- autocmds
    ------------------------------

    -- remaps
    ------------------------------
    nnoremap("<leader>N", ":NERDTreeMirror<CR>:NERDTreeFocus<CR>")
    nnoremap("<leader>n", ":NERDTreeToggle<CR>")
    nnoremap("<leader>f", ":NERDTreeFind<CR>")


    -- global options
    ------------------------------
    vim.g.NERDTreeMinimalUI = 1
    vim.g.NERDTreeMinimalMenu = 1
    vim.g.NERDTreeShowHidden = 1
    vim.g.NERDTreeShowBookmarks = 1
    vim.g.NERDTreeShowLineNumbers = 1
    vim.g.NERDTreeShowBookmarks = 1
    vim.g.NERDTreeDirArrowExpandable = "▶️"
    vim.g.NERDTreeDirArrowCollapsible = "▼"
    vim.g.NERDTreeAutoResize = 1
    -- vim.g.NERDTreeWinPos = "right"
    vim.g.NERDTreeWinSize = 35
    vim.g.NERDTreeIgnore = { ".git", "node_modules", ".cache", ".DS_Store" }
    vim.g.NERDTreeChDirMode = 2
    vim.g.NERDTreeTabTree = 1
    vim.g.NERDTreeMapOpenInTab = 1
end

return M
