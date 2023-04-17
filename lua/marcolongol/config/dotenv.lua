-- dotenv configuration
--------------------------------------------------
local M = {}

function M.setup()
    require('dotenv').setup({
        enable_on_load = true,
        verbose = false
    })
end

return M
