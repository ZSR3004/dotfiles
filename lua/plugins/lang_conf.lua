return {
  { -- Mason
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  { -- Mason LSP Config
    "mason-org/mason-lspconfig.nvim",
  },

  { -- LSP Config
    "neovim/nvim-lspconfig",
  },
}
