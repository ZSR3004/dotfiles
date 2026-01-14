return {

  { -- Autopairs
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
  },

  { -- Barbecue
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
  },

}
