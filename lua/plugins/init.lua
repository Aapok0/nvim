return {
    -- Startup menu
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require('alpha').setup(require'alpha.themes.startify'.config)
        end
    },

    -- Undotree - go through old changes
    'mbbill/undotree',

    -- Telescope - fuzzy finder for moving between files
    -- Config in ../telescope.lua
    {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
-- or                              , tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- LSP and completions - https://github.com/VonHeikemen/lsp-zero.nvim
    -- Config in ../lspzero.lua
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            build = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    },

    -- Trouble - show diagnostics in a list over statusline
    'folke/trouble.nvim',

    -- Vim tmux navigator
    'christoomey/vim-tmux-navigator',

    -- Vim-fugitive - git features in vim
    'tpope/vim-fugitive',

    -- Plugins in separate files

    -- Better statusline
    --lualine.lua

    -- Nvim filetree and devicons for filetypes
    --nvimtree.lua

    -- Treesitter - more advanced syntax higlighting
    --treesitter.lua

    -- Indent lines
    --indent-blankline.lua

    -- Gitsigns - show signs of git changes
    --gitsings.lua

    -- Better colorschemes
    --catppuccin.lua
}
