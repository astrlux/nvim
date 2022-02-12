-- If packer isn't present, install it.
local install_path = vim.fn.stdpath 'data'
                         .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim '
                       .. install_path)
end
vim.api.nvim_exec([[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]], false)
local use = require('packer').use
require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Package manager
    use { -- Syntax highlighting
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'neovim/nvim-lspconfig' -- Collection of configs for built-in LSP client
    use 'kabouzeid/nvim-lspinstall' -- LSPInstall feature
    use { -- native C port of FZF
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }
    use { -- Fuzzy file finder
        'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }
    use 'mbbill/undotree' -- View undo history
    use 'tpope/vim-fugitive' -- Git power tool
    use { -- Surround tool
        'blackcauldron7/surround.nvim',
        config = function()
            require'surround'.setup {
                mappings_style = 'surround'
            }
        end
    }
    use 'nvim-lualine/lualine.nvim' -- Lua status line
    use 'glepnir/lspsaga.nvim'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'jose-elias-alvarez/nvim-lsp-ts-utils' -- typescript specific tools
    use 'kyazdani42/nvim-tree.lua' -- file tree
    use 'nvim-telescope/telescope-file-browser.nvim'
    -- use 'lukas-reineke/indent-blankline.nvim'
    use 'iamcco/markdown-preview.nvim'
    -- colors
    use 'marko-cerovac/material.nvim'
    use 'relastle/bluewery.vim'
    use 'Mofiqul/vscode.nvim'
    -- use 'kyazdani42/nvim-web-devicons'
    use 'arzg/vim-colors-xcode'
    use 'navarasu/onedark.nvim'
    use 'n1ghtmare/noirblaze-vim'
    use {
        'metalelf0/jellybeans-nvim',
        requires = {'rktjmp/lush.nvim'}
    }
    use {
        'ellisonleao/gruvbox.nvim',
        requires = {'rktjmp/lush.nvim'}
    }
end)
