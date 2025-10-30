return { 
  { -- CMP
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path"
    },
  },

  { -- Autopairs
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
  },
}
