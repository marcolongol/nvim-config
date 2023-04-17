-- ALE (Asynchronous Lint Engine) configuration
--------------------------------------------------
local M = {}

function M.setup()
	-- Enable ALE
	vim.g.ale_enabled = 1

	--------------------------------------------------
	-- Linters
	--------------------------------------------------
	-- Enable linters
	vim.g.ale_linters = {
		go = { "golangci_lint" },
		python = { "flake8", "mypy" },
		sh = { "shellcheck" },
		tex = { "chktex" },
		typescript = { "eslint" },
		vim = { "vint" },
	}

	-- Lint on save
	vim.g.ale_lint_on_save = 1

	-- Lint on text change
	vim.g.ale_lint_on_text_changed = 1

	--------------------------------------------------
	-- Formatters
	--------------------------------------------------
	-- Enable formatters
	vim.g.ale_fixers = {
		go = { "gofmt" },
		python = { "black" },
		sh = { "shfmt" },
		tex = { "latexindent" },
		typescript = { "prettier" },
		vim = { "vimlint" },
	}

	-- Format on save
	vim.g.ale_fix_on_save = 1

	-- Format on text change
	vim.g.ale_fix_on_text_changed = 0

	-- Format on enter
	vim.g.ale_fix_on_enter = 0

	-- Format on insert leave
	vim.g.ale_fix_on_insert_leave = 0

	-- Format on normal mode
	vim.g.ale_fix_on_normal_mode = 0

	-- Format on insert mode
	vim.g.ale_fix_on_insert_mode = 0

	--------------------------------------------------
	-- Completion
	--------------------------------------------------
	-- Enable completion
	vim.g.ale_completion_enabled = 1
end

return M
