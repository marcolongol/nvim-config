-----------------------------------------------------------------------------
-- Packer is a package manager for Neovim written in Lua.
-- This snippet is taken from the Packer README.
-- It installs packer if it is not already installed.
-- It then runs packer.sync() to install all plugins.
-- It also sets up the autocommands to run packer.compile() on BufWritePost.
-- This is so that the compiled file is always up to date.
---------------------------------------------------------------------------
-- Packer Initialization
---------------------------------------------------------------------------
-- Automatically install packer if it is not already installed
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP =
        fn.system({
            "git",
            "clone",
            "--depth",
            "1",
            "https://github.com/wbthomason/packer.nvim",
            install_path
        })
    vim.cmd('packadd packer.nvim')
end

-- Autocmds to run packer.compile() on BufWritePost
vim.cmd('autocmd BufWritePost packer.lua source <afile> | PackerCompile')

-- Packer commands
-- PackerCompile: Compile the packer manifest file
-- PackerInstall: Install all plugins
-- PackerStatus: Show the status of all plugins
-- PackerSync: Sync all plugins
-- PackerUpdate: Update all plugins
-- PackerClean: Clean all plugins

------------------------------------------------------------------------
-- Packer Plugins
------------------------------------------------------------------------
return require("packer").startup({
    function(use)
        ----------------------------------------------------------------
        -- Packer
        ----------------------------------------------------------------
        use({
            "wbthomason/packer.nvim",
        })


        ----------------------------------------------------------------
        -- LSP
        ----------------------------------------------------------------

        -- * neodev
        use({
            "folke/neodev.nvim",
            -- config = function()
            --     require('marcolongol.config.neodev.lua').setup()
            -- end,
        })

        -- * lsp-zeo
        use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v1.x',
            requires = {
                -- LSP Support
                { 'neovim/nvim-lspconfig' },
                { 'williamboman/mason.nvim' },
                { 'williamboman/mason-lspconfig.nvim' },

                -- Autocompletion
                { 'hrsh7th/nvim-cmp' },
                { 'hrsh7th/cmp-buffer' },
                { 'hrsh7th/cmp-path' },
                { 'saadparwaiz1/cmp_luasnip' },
                { 'hrsh7th/cmp-nvim-lsp' },
                { 'hrsh7th/cmp-nvim-lua' },

                -- Snippets
                { 'L3MON4D3/LuaSnip' },
                { 'rafamadriz/friendly-snippets' },
            },
            config = function()
                require('marcolongol.config.lsp-zero').setup()
            end,
        }


        use({
            "towolf/vim-helm",
        })


        ------------------------------------------------------------------
        ---- Github Copilot
        ------------------------------------------------------------------
        use({
            "github/copilot.vim",
            -- config = function()
            --     require("marcolongol.config.copilot").setup()
            -- end,
        })

        ------------------------------------------------------------------
        ---- Utils
        ------------------------------------------------------------------
        -- NerdTree
        use({
            "scrooloose/nerdtree",
            config = function()
                require("marcolongol.config.nerdtree").setup()
            end,
        })
        use({
            "xuyuanp/nerdtree-git-plugin",
            requires = { "scrooloose/nerdtree" },
            config = function()
                require("marcolongol.config.nerdtree-git-plugin").setup()
            end,
        })
        use({
            "philrunninger/nerdtree-buffer-ops",
            requires = { "scrooloose/nerdtree" },
        })
        use({
            "philrunninger/nerdtree-visual-selection",
            requires = { "scrooloose/nerdtree" }
        })

        -- Which-Key
        use({
            "folke/which-key.nvim",
            config = function()
                require("marcolongol.config.which-key").setup()
            end,
        })

        -- Treesitter
        use({
            "nvim-treesitter/nvim-treesitter",
            config = function()
                require("marcolongol.config.treesitter").setup()
            end,
            run = ":TSUpdate",
        })

        -- CtrlP
        use({
            "kien/ctrlp.vim",
            config = function()
                require("marcolongol.config.ctrlp").setup()
            end,
        })

        -- Fzf
        use({
            "junegunn/fzf",
            run = function()
                vim.fn["fzf#install"]()
            end,
        })
        use({
            "junegunn/fzf.vim",
            config = function()
                require("marcolongol.config.fzf").setup()
            end,
        })

        -- Commentary
        use({
            "tpope/vim-commentary",
            config = function()
                require("marcolongol.config.commentary").setup()
            end,
        })

        -- Surround
        use({
            "tpope/vim-surround",
            config = function()
                require("marcolongol.config.surround").setup()
            end,
        })

        -- Repeat
        use({
            "tpope/vim-repeat",
            config = function()
                -- require("marcolongol.config.repeat").setup()
            end,
        })

        -- k8s.vim
        use({
            "skanehira/k8s.vim",
            config = function()
                require("marcolongol.config.k8s").setup()
            end,
        })

        -- Emmet-vim
        use({
            "mattn/emmet-vim",
            config = function()
                require("marcolongol.config.emmet").setup()
            end,
        })

        -- Fugitive
        use({
            "tpope/vim-fugitive",
            -- config = function()
            --     require("marcolongol.config.fugitive").setup()
            -- end,
        })

        -- split-term.vim
        use({
            "vimlab/split-term.vim",
            config = function()
                require("marcolongol.config.splitterm").setup()
            end,
        })

        -- nvim-dap
        use({
            "mfussenegger/nvim-dap",
            config = function()
                require("marcolongol.config.dap").setup()
            end,
        })

        -- nvim-dap-ui
        use({
            "rcarriga/nvim-dap-ui",
            config = function()
                require("marcolongol.config.dap-ui").setup()
            end,
        })

        -- dotenv.nvim
        use({
            "ellisonleao/dotenv.nvim",
            config = function()
                require("marcolongol.config.dotenv").setup()
            end,
        })

        ------------------------------------------------------------------
        ---- Style plugins
        ------------------------------------------------------------------

        -- Color schemes

        -- -- tokyonight
        use({
            "folke/tokyonight.nvim",
            config = function()
                require("marcolongol.config.tokyonight").setup()
            end,
        })

        -- Icons
        use("ryanoasis/vim-devicons")
        use("kyazdani42/nvim-web-devicons")

        -- Statusline
        use({
            "hoob3rt/lualine.nvim",
            requires = { "kyazdani42/nvim-web-devicons", opt = true },
            config = function()
                require("marcolongol.config.lualine").setup()
            end,
        })

        -- barbar
        use({
            "romgrk/barbar.nvim",
            requires = { "kyazdani42/nvim-web-devicons", opt = true },
            config = function()
                require("marcolongol.config.barbar").setup()
            end,
        })

        -- Automatically set up your configuration after cloning packer.nvim
        if PACKER_BOOTSTRAP then
            require("packer").sync()
        end
    end,
    config = require("marcolongol.config.packer-config"),
})
------------------------------------------------------------------------
