-- Bootstrap snippet from Packer Github repository https://github.com/wbthomason/packer.nvim#bootstrapping 
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    -- Let Packer manage itself
    use 'wbthomason/packer.nvim'

    -- Startup menu
    use {
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
        end
    }

    -- Better statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Nvim filetree and devicons for filetypes
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    -- Undotree - go through old changes
    use 'mbbill/undotree'

    -- Treesitter - more advanced syntax higlighting
    use 'nvim-treesitter/nvim-treesitter'

    -- Telescope - fuzzy finder for moving between files
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                          , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- LSP and completions - https://github.com/VonHeikemen/lsp-zero.nvim
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    -- Vim tmux navigator
    use 'christoomey/vim-tmux-navigator'

    -- Better colorschemes
    use 'morhetz/gruvbox'
    use 'ayu-theme/ayu-vim'
    use { "catppuccin/nvim", as = "catppuccin" }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
