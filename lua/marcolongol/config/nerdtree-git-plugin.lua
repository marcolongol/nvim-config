-- NERDTree git plugin configuration
--------------------------------------------------
local M = {}

function M.setup()
	-- global options
	--------------------------------------------------
	vim.g.NERDTreeGitStatusIndicatorMapCustom = {
		Modified = "✏️",
		Staged = "✅",
		Renamed = "➡️",
		Untracked = "📄",
		Unmerged = "🔀",
		Deleted = "🗑️",
		Ignored = "🙈",
		Clean = "👌",
		Unknown = "❓",
	}
	vim.g.NERDTreeGitStatusUseNerdFonts = 1
	vim.g.NERDTreeGitStatusShowIgnored = 1
	vim.g.NERDTreeGitStatusConcealBrackets = 1
end

return M
