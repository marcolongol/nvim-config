-- fzf configuration
--------------------------------------------------
local M = {}

function M.setup()
    vim.g.fzf_layout = {
        window = {
            width = 0.9,
            height = 0.9,
            yoffset = 0.5,
            xoffset = 0.5,
        },
    }
    vim.g.fzf_preview_window = { 'right:50%', 'ctrl-/' }
    vim.g.fzf_action = {
        ['ctrl-t'] = 'tab split',
        ['ctrl-x'] = 'split',
        ['ctrl-v'] = 'vsplit',
    }
    vim.g.fzf_buffers_jump = 1
    vim.g.fzf_buffers_delete = 1
    vim.g.fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
    vim.g.fzf_commits_log_preview = 'echo {} | cut -d" " -f1 | xargs -I % git show --color=always %'
    vim.g.fzf_files_command = 'fd --type f --hidden --follow --exclude .git'
    vim.g.fzf_find_files_preview_window = { 'right:50%', 'ctrl-/' }
    vim.g.fzf_find_files_preview_command = 'bat --color=always --style=numbers --line-range :500 {}'
    vim.g.fzf_git_status_preview_window = { 'right:50%', 'ctrl-/' }
    vim.g.fzf_git_status_preview_command = 'git diff --color=always'
    vim.g.fzf_history_command = 'history -n 1'
    vim.g.fzf_history_preview_window = { 'right:50%', 'ctrl-/' }
    vim.g.fzf_history_preview_command =
    'echo {} | cut -d" " -f2- | xargs -I % sh -c "bat --color=always --style=numbers --line-range :500 % || cat %"'
    vim.g.fzf_tags_command =
    'ctags -R --sort=yes --fields=+l --languages=lua --exclude=.git --exclude=*.min.js --exclude=*.min.css --exclude=*.min.json --exclude=*.min.xml --exclude=*.min.html --exclude=*.min.svg --exclude=*.min.png --exclude=*.min.jpg --exclude=*.min.jpeg --exclude=*.min.gif --exclude=*.min.woff --exclude=*.min'
end

return M
