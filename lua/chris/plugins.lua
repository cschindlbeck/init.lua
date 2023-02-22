local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- Packer can manage itself
    -- 'wbthomason/packer.nvim',

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },

    'nvim-treesitter/nvim-treesitter', -- -- Treesitter
    'Mofiqul/vscode.nvim', -- VS code theme
    'tpope/vim-fugitive', -- Vim plugin

    -- Nvim tree
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    },

    -- Fancier bufferline
    { 'akinsho/bufferline.nvim', version = "v3.*", dependencies = 'nvim-tree/nvim-web-devicons' },
    'nvim-lualine/lualine.nvim', -- Fancier statusline
    'famiu/bufdelete.nvim', -- Convenient bufferdelete
    'numToStr/Comment.nvim', -- "gc" to comment visual regions/lines

    -- Toggle terminal
    { "akinsho/toggleterm.nvim",
        -- tag = '*',
        config = function()
            require("toggleterm").setup()
        end
    },

    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
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
        }
    },

    -- Trouble
    {
        "folke/trouble.nvim",
        -- dependencies = "kyazdani42/nvim-web-devicons",
        -- config = function()
        --     require("trouble").setup {
        --         -- your configuration comes here
        --         -- or leave it empty to use the default settings
        --         -- refer to the configuration section below
        --     }
        -- end
    }
}

local opts = {}

require("lazy").setup(plugins, opts)
