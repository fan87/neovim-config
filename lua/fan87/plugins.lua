return function(use)
    use 'ThePrimeagen/vim-be-good'              -- Vim practice plugin
    use 'airblade/vim-gitgutter'                -- Git mark
    use 'navarasu/onedark.nvim'                 -- Onedark color scheme
    use 'preservim/nerdtree'                    -- Provides NERDTree
    use 'karb94/neoscroll.nvim'                 -- Provides smooth scroll
    use 'nvim-treesitter/nvim-treesitter'       -- Syntax highlighting 
    use {
        'ThePrimeagen/harpoon',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'stevearc/oil.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'rcarriga/nvim-notify'
    use 'ryanoasis/vim-devicons'
    use 'Xuyuanp/nerdtree-git-plugin'
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            -- {'williamboman/mason.nvim'},
            -- {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'folke/neodev.nvim'
    use 'mrded/nvim-lsp-notify'
    use 'linrongbin16/lsp-progress.nvim'
end
