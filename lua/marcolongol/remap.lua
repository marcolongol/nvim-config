------------------------------------------------------------------------
-- Import remap functions
local nnoremap = require("marcolongol.utils.utils").nnoremap
local inoremap = require("marcolongol.utils.utils").inoremap
local vnoremap = require("marcolongol.utils.utils").vnoremap
------------------------------------------------------------------------
-- Set leader to space
vim.g.mapleader = " "
------------------------------------------------------------------------
-- NORMAL MODE REMAPS
------------------------------------------------------------------------
-- Move between windows
nnoremap("<leader>h", "<C-w>h")
nnoremap("<leader>j", "<C-w>j")
nnoremap("<leader>k", "<C-w>k")
nnoremap("<leader>l", "<C-w>l")
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- Move between tabs by number
nnoremap("<leader>1", ":tabn 1<CR>")
nnoremap("<leader>2", ":tabn 2<CR>")
nnoremap("<leader>3", ":tabn 3<CR>")
nnoremap("<leader>4", ":tabn 4<CR>")
nnoremap("<leader>5", ":tabn 5<CR>")
nnoremap("<leader>6", ":tabn 6<CR>")
nnoremap("<leader>7", ":tabn 7<CR>")
nnoremap("<leader>8", ":tabn 8<CR>")
nnoremap("<leader>9", ":tabn 9<CR>")
nnoremap("<leader>0", ":tabn 10<CR>")
nnoremap("<C-1>", ":tabn 1<CR>")
nnoremap("<C-2>", ":tabn 2<CR>")
nnoremap("<C-3>", ":tabn 3<CR>")
nnoremap("<C-4>", ":tabn 4<CR>")
nnoremap("<C-5>", ":tabn 5<CR>")
nnoremap("<C-6>", ":tabn 6<CR>")
nnoremap("<C-7>", ":tabn 7<CR>")
nnoremap("<C-8>", ":tabn 8<CR>")
nnoremap("<C-9>", ":tabn 9<CR>")
nnoremap("<C-0>", ":tabn 10<CR>")

-- Move between buffers
nnoremap("<leader>bn", ":bn<CR>")
nnoremap("<leader>bp", ":bp<CR>")
nnoremap("<leader>bd", ":bd<CR>")
nnoremap("<C-n>", ":bn<CR>")
nnoremap("<C-p>", ":bp<CR>")
nnoremap("<C-d>", ":bd<CR>")

-- Move between splits
nnoremap("<leader>h", "<C-w>h")
nnoremap("<leader>j", "<C-w>j")
nnoremap("<leader>k", "<C-w>k")
nnoremap("<leader>l", "<C-w>l")
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- General remaps
nnoremap("<C-s>", ":w<CR>")
nnoremap("<C-w>", ":q<CR>")
nnoremap("<leader>w", ":q<CR>")
nnoremap("<leader>Q", ":qa!<CR>")
nnoremap("<C-e>", ":wq<CR>")
nnoremap("<C-a>", "ggVG")
nnoremap("<C-z>", ":undo<CR>")
nnoremap("<C-y>", ":redo<CR>")
nnoremap("<C-BS>", "diw")

------------------------------------------------------------------------
-- Insert mode remaps
------------------------------------------------------------------------
-- Go back to normal mode
inoremap("<C-[>", "<ESC>")
inoremap("<C-c>", "<ESC>")
inoremap("jk", "<Esc>")
inoremap("jj", "<Esc>")
inoremap("kj", "<Esc>")
inoremap("kk", "<Esc>")

-- General remaps

------------------------------------------------------------------------
-- Visual mode remaps
------------------------------------------------------------------------
-- Copy to clipboard
vnoremap("<C-c>", '"+y')

-- General remaps

-- Move highlighted text up and down
vnoremap("<C-j>", ":m '>+1<CR>gv=gv")
vnoremap("<C-k>", ":m '<-2<CR>gv=gv")
