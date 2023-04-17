-- Neoformat configuration
--------------------------------------------------
local M = {}

function enable_call_neoformat_on_save()
    vim.api.nvim_exec(
        [[
        augroup Neoformat
        autocmd!
        autocmd BufWritePre * Neoformat
        augroup END
    ]],
        false
    )
end

function M.setup()
    -- Configure formatters
    --------------------------------------------------
    vim.g.neoformat_enabled_python = { "black" }
    vim.g.neoformat_enabled_javascript = { "prettier" }
    vim.g.neoformat_enabled_typescript = { "prettier" }
    vim.g.neoformat_enabled_json = { "prettier" }
    vim.g.neoformat_enabled_yaml = { "prettier" }
    vim.g.neoformat_enabled_markdown = { "prettier" }
    vim.g.neoformat_enabled_html = { "prettier" }
    vim.g.neoformat_enabled_css = { "prettier" }
    vim.g.neoformat_enabled_scss = { "prettier" }
    vim.g.neoformat_enabled_vim = { "prettier" }
    vim.g.neoformat_enabled_lua = { "stylua" }
    vim.g.neoformat_enabled_rust = { "rustfmt" }
    vim.g.neoformat_enabled_go = { "gofmt" }
    vim.g.neoformat_enabled_sh = { "shfmt" }
    vim.g.neoformat_enabled_dart = { "dartfmt" }
    vim.g.neoformat_enabled_kotlin = { "ktlint" }
    vim.g.neoformat_enabled_java = { "google-java-format" }
    vim.g.neoformat_enabled_php = { "php-cs-fixer" }
    vim.g.neoformat_enabled_c = { "clang-format" }
    vim.g.neoformat_enabled_cpp = { "clang-format" }
    vim.g.neoformat_enabled_ruby = { "rufo" }
    vim.g.neoformat_enabled_elixir = { "mix_format" }
    vim.g.neoformat_enabled_elm = { "elm-format" }
    vim.g.neoformat_enabled_haskell = { "hindent" }
    vim.g.neoformat_enabled_scala = { "scalafmt" }
    vim.g.neoformat_enabled_swift = { "swiftformat" }
    vim.g.neoformat_enabled_tex = { "latexindent" }
    vim.g.neoformat_enabled_dockerfile = { "dockerfile_format" }
    vim.g.neoformat_enabled_terraform = { "terraform_fmt" }
    vim.g.neoformat_enabled_sql = { "sqlformat" }
    vim.g.neoformat_enabled_pug = { "prettier" }
    vim.g.neoformat_enabled_liquid = { "prettier" }
    vim.g.neoformat_enabled_nginx = { "prettier" }
    vim.g.neoformat_enabled_vue = { "prettier" }
    vim.g.neoformat_enabled_svelte = { "prettier" }
    vim.g.neoformat_enabled_angular = { "prettier" }
    vim.g.neoformat_enabled_jinja = { "prettier" }
    vim.g.neoformat_enabled_erb = { "prettier" }
    vim.g.neoformat_enabled_puppet = { "puppet-lint" }
    --------------------------------------------------
    -- Enable Neoformat on save
    --------------------------------------------------
    -- enable_call_neoformat_on_save()
end

return M

--------------------------------------------------
