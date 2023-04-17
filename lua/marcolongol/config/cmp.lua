-- nvim-cmp & luasnip configuration
--------------------------------------------------
local M = {}

local cmp = require('cmp')
local luasnip = require('luasnip')

function M.setup()
    -- luasnip
    ----------------------------------------------



    -- nvim-cmp
    ----------------------------------------------
    cmp.setup({
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
        mapping = {
            ['<C-b>'] = cmp.mapping.scroll_docs( -4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.abort(),
            -- ['<CR>'] = cmp.mapping.confirm({
            --     behavior = cmp.ConfirmBehavior.Replace,
            --     select = true,
            -- }),
            ['<Tab>'] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif require('luasnip').expand_or_jumpable() then
                    vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
                elseif vim.b._copilot_completion ~= nil then
                    vim.fn.feedkeys(vim.api.nvim_replace_termcodes(vim.fn['copilot#Accept'](), true, true, true), '')
                else
                    fallback()
                end
            end, {
                'i',
                's',
            }),
        },
        window = {
            border = 'single',
        },
        sources = {
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
            { name = 'buffer' },
        },
    })

    -- Set up lspconfig.
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
    require('lspconfig').pyright.setup({
        capabilities = capabilities,
    })
    require('lspconfig').eslint.setup({
        capabilities = capabilities,
    })
    require('lspconfig').tslint.setup({
        capabilities = capabilities,
    })
end

return M
