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
  use 'tpope/vim-surround' -- surround
  use 'nvim-lualine/lualine.nvim' -- Lua status line
  use 'glepnir/lspsaga.nvim'
  use {
    'ms-jpq/coq_nvim',
    branch = 'coq',
    requires = {
      {
        'ms-jpq/coq.artifacts',
        branch = 'artifacts'
      }
    }
  }
  use 'kyazdani42/nvim-tree.lua' -- file tree
  use 'nvim-telescope/telescope-file-browser.nvim'
  use { -- INSTALL
    'astrlux/karonda',
    requires = {'rktjmp/lush.nvim'}
  }
end)
