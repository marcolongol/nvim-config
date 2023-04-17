-- barbar configuration
--------------------------------------------------
local M = {}

nnoremap = require('marcolongol.utils.utils').nnoremap

function M.setup()
    vim.g.bufferline = {
        animation = true,
        auto_hide = true,
        closable = true,
        clickable = true,
        icon_close_tab = '',
        icon_close_tab_modified = '●',
        icon_separator_active = '▎',
        icon_separator_inactive = '▎',
        icon_pinned = '車',
        maximum_padding = 4,
        maximum_length = 30,
        semantic_letters = true,
        no_name_title = nil,
    }

    -- Keymaps
    ----------

    -- Move
    nnoremap('<A-,>', ':BufferPrevious<CR>')
    nnoremap('<A-.>', ':BufferNext<CR>')

    -- Re-Order
    nnoremap('<A-<>', ':BufferMovePrevious<CR>')
    nnoremap('<A->>', ':BufferMoveNext<CR>')

    -- Gotos
    nnoremap('<A-1>', ':BufferGoto 1<CR>')
    nnoremap('<A-2>', ':BufferGoto 2<CR>')
    nnoremap('<A-3>', ':BufferGoto 3<CR>')
    nnoremap('<A-4>', ':BufferGoto 4<CR>')
    nnoremap('<A-5>', ':BufferGoto 5<CR>')
    nnoremap('<A-6>', ':BufferGoto 6<CR>')
    nnoremap('<A-7>', ':BufferGoto 7<CR>')
    nnoremap('<A-8>', ':BufferGoto 8<CR>')
    nnoremap('<A-9>', ':BufferLast<CR>')
    nnoremap('<A-0>', ':BufferClose<CR>')

    -- Close Buffer
    nnoremap('<A-c>', ':BufferClose<CR>')

    -- Sort (using leader)
    nnoremap('<leader>bb', '<cmd>BufferOrderByBufferNumber<CR>')
    nnoremap('<leader>bd', '<cmd>BufferOrderByDirectory<CR>')
    nnoremap('<leader>bl', '<cmd>BufferOrderByLanguage<CR>')
end

return M
