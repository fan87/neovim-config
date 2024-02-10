return function(use)
    use 'wbthomason/packer.nvim'
    use 'b0o/schemastore.nvim'
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
    use 'wellle/targets.vim'
    use 'lambdalisue/suda.vim'
    use 'windwp/nvim-autopairs'
    use({
        'ray-x/navigator.lua',
        requires = {
            { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
            { 'neovim/nvim-lspconfig' },
        },
    })
    use 'machakann/vim-highlightedyank'
    use 'tpope/vim-commentary'
    use 'norcalli/nvim-colorizer.lua'
    use 'MunifTanjim/prettier.nvim'
    use 'google/vim-maktaba'
    use 'bazelbuild/vim-bazel'
    use {
        'kkoomen/vim-doge',
        run = ':call doge#install()'
    }
    use 'tamago324/nlsp-settings.nvim'
end
