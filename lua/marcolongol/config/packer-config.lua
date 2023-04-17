-- Packer configuration
--------------------------------------------------

local M = {
    ensure_dependencies = true,
    max_jobs = nil,
    compile_on_sync = true,
    auto_clean = true,
    auto_reload_compiled = true,
    git = {
        clone_timeout = 600,
        default_url_format = "https://github.com/%s",
        depth = 1,
    },
    display = {
        open_fn = require("packer.util").float,
        prompt_border = "single",
        working_sym = "🚀",
        error_sym = "❌",
        done_sym = "✅",
        removed_sym = "🗑️",
        moved_sym = "🚚",
        header_sym = "📦",
        show_all_info = true,
        keybindings = {
            quit = "q",
            toggle_info = "<CR>",
            diff = "d",
            prompt_revert = "r",
            prompt_clean = "c",
            prompt_edit = "e",
            prompt_diff = "D",
            prompt_recompile = "R",
            prompt_sync = "S",
            prompt_delete = "x",
            prompt_toggle_show_all_info = "a",
        },
    },
    profile = {
        enable = true,
        threshold = 1,
    },
    autoremove = true,
}

return M
