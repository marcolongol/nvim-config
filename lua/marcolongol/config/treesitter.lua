-- Treesitter configuration
--------------------------------------------------
local M = {}

require 'nvim-treesitter.install'.compilers = { "zig" }

local ts = require("nvim-treesitter.configs")

function M.setup()
    ts.setup({
        ensure_installed = {
            "bash",
            "c",
            "cpp",
            "css",
            "dockerfile",
            "go",
            "html",
            "javascript",
            "json",
            "lua",
            "python",
            "regex",
            "rust",
            "toml",
            "tsx",
            "typescript",
            "yaml",
            "vim",
            "help"
        },
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
            use_languagetree = true,
        },
        additional_vim_regex_highlighting = true
    })
end

return M
