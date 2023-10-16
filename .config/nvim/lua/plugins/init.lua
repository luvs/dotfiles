local present, packer = pcall(require, "plugins.packer-init")

if not present then
   return false
end

return require('packer').startup({function(use)
  use {
    'wbthomason/packer.nvim',
    event = "VimEnter",
  }

  -----------------------------------------------------------------------------
  -- Appearance & interface
  -----------------------------------------------------------------------------
  -- color theme
  use 'rrethy/nvim-base16'
  -- icons
  use {
    'nvim-tree/nvim-web-devicons',
    config = function() require('plugins/configs/nvim-web-devicons') end
  }
  -- git signs
  use {
    'lewis6991/gitsigns.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function() require('gitsigns').setup() end
  }
  -- statusline
  use {
    'feline-nvim/feline.nvim',
    requires = 'nvim-tree/nvim-web-devicons',
    config = function() require('plugins/configs/feline') end
  }
  -- show colors
  use { 'norcalli/nvim-colorizer.lua',
    config = function() require('colorizer').setup() end
  }
  -- tabs
  use {
    'romgrk/barbar.nvim',
    requires = 'nvim-tree/nvim-web-devicons',
    config = function() require('plugins/configs/barbar') end
  }
  -- start screen
  use {
    'goolord/alpha-nvim',
    config = function() require('plugins/configs/alpha') end
  }

  -----------------------------------------------------------------------------
  -- Controls and navigation
  -----------------------------------------------------------------------------
  use {
    'folke/which-key.nvim',
    config = function() require('plugins/configs/which-key') end
  }
  -- fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('plugins/configs/telescope') end
  }
  -- file manager
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function() require('nvim-tree').setup {} end
  }
  -- easy motion
  use {
    'phaazon/hop.nvim',
    branch = 'v1', -- optional but strongly recommended
    config = function() require('hop').setup { keys = 'etovxqpdygfblzhckisuran' } end
  }
  use {
    "ggandor/lightspeed.nvim",
    event = "BufRead",
  }

  -----------------------------------------------------------------------------
  -- Controls and navigation
  -----------------------------------------------------------------------------
  use {
    'lukas-reineke/indent-blankline.nvim',
    event = "BufRead",
    config = function() require('plugins/configs/indent-blankline') end
  }

  use {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function() require("better_escape").setup() end,
  }

  -----------------------------------------------------------------------------
  -- Coding
  -----------------------------------------------------------------------------
  use { 
    'TimUntersberger/neogit', 
    requires = 'nvim-lua/plenary.nvim' 
  }
  -- Go
  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua'

  -- use {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function() require('plugins/configs/copilot') end
  -- }
  --
  -- use {
  --   "zbirenbaum/copilot-cmp",
  --   after = { "copilot.lua" },
  --   config = function() require('plugins/configs/copilot-cmp') end
  -- }
  -----------------------------------------------------------------------------
  -- Autocomplete and LSP
  -----------------------------------------------------------------------------
  use {
    'nvim-treesitter/nvim-treesitter',
    event = "BufRead",
    run = ':TSUpdate'
  }

  -- lsp
  use {
    "neovim/nvim-lspconfig",
    setup = function()
      require("core.utils").packer_lazy_load "nvim-lspconfig"
      -- reload the current file so lsp actually starts for it
      vim.defer_fn(function()
        vim.cmd 'if &ft == "packer" | echo "" | else | silent! e %'
      end, 0)
    end,
  }

  use {
    "ray-x/lsp_signature.nvim",
    after = "nvim-lspconfig",
    config = function() require('plugins/configs/lsp-signature') end
  }

  use {
    "rafamadriz/friendly-snippets",
    event = "InsertEnter",
  }

  -- load luasnips + cmp related in insert mode only

  use {
    "hrsh7th/nvim-cmp",
    config = function() require('plugins/configs/cmp') end
  }

  use {
    "L3MON4D3/LuaSnip",
  }

  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  -----------------------------------------------------------------------------
  -- Text
  -----------------------------------------------------------------------------
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'junegunn/vim-easy-align'
  use {
    'windwp/nvim-autopairs',
    config = function() require('plugins/configs/autopairs') end
  }
  use { 
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  }
  use {
    'ellisonleao/glow.nvim',
    config = function() require('plugins/configs/glow') end
  }

  -----------------------------------------------------------------------------
  -- Others
  -----------------------------------------------------------------------------
  use 'nathom/filetype.nvim'
--  use 'onsails/lspkind.nvim'
  use {'nvim-telescope/telescope-ui-select.nvim' }
  use {
    'Shatur/neovim-session-manager',
    requires = 'nvim-lua/plenary.nvim',
    config = function() require('plugins/configs/session-manager') end
  }
end,
config = {
     profile = {
    enable = true,
    threshold = 0,
  }
}})
