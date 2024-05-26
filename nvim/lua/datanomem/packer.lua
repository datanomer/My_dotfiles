
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
 -- Packer can manage itself
  use 'wbthomason/packer.nvim'

--Fuzzy finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
 --Colorscheme
--  use { "ellisonleao/gruvbox.nvim" }
--treesitter
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  use('nvim-treesitter/playground')

--autopairs
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
--harpoon
  use('theprimeagen/harpoon')
--The LSP

use 'famiu/nvim-reload'

use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
}

-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"

    use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
-- lsp_signature
use 'ray-x/lsp_signature.nvim'

--  use {'nvim-orgmode/orgmode', config = function()} (
--  require('orgmode').setup{}
--end)
--use {'kdheepak/monochrome.nvim', config = function()
--    vim.cmd 'colorscheme monochrome'
--end}
--use "blazkowolf/gruber-darker.nvim"
--vim.cmd.colorscheme("gruber-darker")
--use { "bluz71/vim-moonfly-colors", as = "moonfly" }
-- Lua initialization file
--vim.cmd [[colorscheme moonfly]]
    -- Lua initialization file
--    vim.g.moonflyNormalFloat = false
use {
      "jesseleite/nvim-noirbuddy",
  requires = { "tjdevries/colorbuddy.nvim" }
}

require('noirbuddy').setup {
  colors = {
    background = '#000000',
    primary = '#E0D85F',
    diagnostic_error = '#EC0034',
    diagnostic_warning = '#ff7700',
    diagnostic_info = '#d5d5d5',
    diagnostic_hint = '#f5f5f5',
    diff_add = '#f5f5f5',
    diff_change = '#737373',
    diff_delete = '#EC0034',
    noir_1 = '#4A90E2',
    noir_5 = '#fbc02d',
    noir_4 = '#FFFFFF',
    noir_6 = '#FFFFFF',
    noir_3 = '#ffeb3b',
    noir_2 = '#50E3C2',
    secondary  = '#7986cb',
    },
}
-- file: colors/my-colorscheme-name.lua

use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
end}

use "lukas-reineke/indent-blankline.nvim"

use {'kevinhwang91/nvim-hlslens'}

use  {'kyazdani42/nvim-web-devicons'}

-- Custom statusline
--use { 'nvim-lualine/lualine.nvim', 
-- requires = { 'kyazdani42/nvim-web-devicons', opt = true }
--}
end)

