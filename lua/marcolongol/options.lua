------------------------------------------------------------------------
-- Disable builtins
------------------------------------------------------------------------
local disabled_built_ins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "matchit",
    "netrw",
    "netrwFileHandlers",
    "loaded_remote_plugins",
    "loaded_tutor_mode_plugin",
    "netrwPlugin",
    "netrwSettings",
    "rrhelper",
    "spellfile_plugin",
    "tar",
    "tarPlugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end
------------------------------------------------------------------------
-- Set options
------------------------------------------------------------------------

-- guicursor options
vim.opt.guicursor = {
    "n-v-c:block",
    "i-c-ci-ve:ver25",
    "r-cr:hor20",
    "o:hor50",
    "i:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor",
    "sm:block-blinkwait175-blinkoff150-blinkon175",
}

-- font options
vim.opt.guifont = "CaskaydiaCove NF:h14"

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tab options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- general options
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.hidden = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.splitbelow = true
vim.opt.updatetime = 4000
vim.opt.colorcolumn = "88"
vim.opt.incsearch = true
vim.opt.listchars = {
    tab = "» ",
    trail = "·",
    extends = "»",
    precedes = "«",
    nbsp = "␣",
}
vim.opt.list = true
vim.opt.autoread = true

-- highlight on yank
vim.api.nvim_exec([[
augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup END
]], false)
------------------------------------------------------------------------
