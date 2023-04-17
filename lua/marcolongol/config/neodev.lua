-- Neodev configuration
--------------------------------------------------
-- Neodev is a plugin for neovim that allows you to develop plugins for neovim
-- in neovim. It is a plugin manager, a plugin development environment, and a
-- plugin testing framework.
-- github: github.com/folke/neodev.nvim
--------------------------------------------------
local M = {}

local neodev = require('neodev')

function M.setup()
    neodev.setup()
end

return M
