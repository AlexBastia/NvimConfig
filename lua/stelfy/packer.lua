-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use({
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  })

  use({
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      vim.cmd('colorscheme catppuccin')
    end
  })

  use({
    "xiyaowong/transparent.nvim"
  })

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use({
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    }

  })

  use({
    'saadparwaiz1/cmp_luasnip',
  })

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use({ 'lervag/vimtex' })

  use({
    "AlexBastia/luasnip-latex-snippets.nvim",
  })

  use({
    "dfendr/clipboard-image.nvim"
  })

  use({ "nvim-neotest/nvim-nio" })

  use({ 'mfussenegger/nvim-dap' })

  use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })

  use({ "mfussenegger/nvim-jdtls" })
end)
