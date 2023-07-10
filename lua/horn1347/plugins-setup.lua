--Plugin setup file


-- Copied from documentation under
-- https://github.com/wbthomason/packer.nvim

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

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
 
  -- My plugins here
  use {"bluz71/vim-nightfly-colors", as = "nightfly" }

  use {"christoomey/vim-tmux-navigator"}
  
  use {"tpope/vim-surround"}

  use {"vim-scripts/ReplaceWithRegister"}

  use {"numToStr/Comment.nvim"}

  use {"nvim-tree/nvim-tree.lua"}

  use {"kyazdani42/nvim-web-devicons"}

  use {"nvim-lualine/lualine.nvim"}

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  --autocompletion
  use {"hrsh7th/nvim-cmp"}
  use {"hrsh7th/cmp-buffer"}
  use {"hrsh7th/cmp-path"}

  --snippets
  use {"L3MON4D3/LuaSnip"}
  use {"saadparwaiz1/cmp_luasnip"}
  use {"rafamadriz/friendly-snippets"}

 --LSPs
  use {"williamboman/mason.nvim"} --LSP Manager
  use {"williamboman/mason.lspconfig.nvim"}
  use {"neovim/nvim-lspconfig"}



  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
