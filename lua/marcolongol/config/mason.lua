-- Mason configuration
--------------------------------------------------
local M = {}

function M.setup()
    require("mason").setup({
        ui = {
            icons = {
                package_installed = "✅",
                package_pending = "🚀",
                package_uninstalled = "❌",
            },
        },
        max_concurrent_installers = nil,
    })
end

return M
