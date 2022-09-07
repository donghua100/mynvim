local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  
  -- nvim-tree
  use "kyazdani42/nvim-web-devicons"
  use "kyazdani42/nvim-tree.lua"

  -- Colorschemes 
  use "tanvirtin/monokai.nvim"
  use "folke/tokyonight.nvim"
  use "lunarvim/darkplus.nvim"
  -- bufferline
  use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"
  
  -- mainpage
  use "goolord/alpha-nvim"

  -- use({ "williamboman/nvim-lsp-installer" })
  -- -- Lspconfig
  -- use({ "neovim/nvim-lspconfig" })
  -- -- 补全引擎
  -- use("hrsh7th/nvim-cmp")
  -- -- Snippet 引擎
  -- use("hrsh7th/vim-vsnip")
  -- 补全源
  -- use("hrsh7th/cmp-vsnip")
  -- use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
  -- use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
  -- use("hrsh7th/cmp-path") -- { name = 'path' }
  -- use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
  -- use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
  -- -- 常见编程语言代码段
  -- use("rafamadriz/friendly-snippets")
  -- -- UI 增强
  -- use("onsails/lspkind-nvim")
  -- use("tami5/lspsaga.nvim")
  -- use("folke/lua-dev.nvim")
  -- Telescope
  use "nvim-telescope/telescope.nvim"
  -- use 'nvim-telescope/telescope-media-files.nvim'
  
  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  -- indent blabkline
  use "lukas-reineke/indent-blankline.nvim"

  -- project
  use "ahmedkhalf/project.nvim"
  
  -- coc.nvim
  use ({'neoclide/coc.nvim', branch = 'release'})
  -- comment
  -- use 'JoosepAlviste/nvim-ts-context-commentstring'


  -- lualine
  use "nvim-lualine/lualine.nvim"
  -- which-key
  use "folke/which-key.nvim"

  -- toggleterm
  -- use "akinsho/toggleterm.nvim"
	
  -- comment
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "numToStr/Comment.nvim"

 -- autopairs
  use "windwp/nvim-autopairs"

 -- dap 
  -- use "mfussenegger/nvim-dap"
  -- use "rcarriga/nvim-dap-ui"
  -- use "ravenxrz/DAPInstall.nvim"
  -- use({'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" }})
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
