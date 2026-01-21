return {

  { -- Which Key
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },

  { -- Hardtime
     "m4xshen/hardtime.nvim",
     lazy = false,
     dependencies = { "MunifTanjim/nui.nvim" },
     opts = {
        disabled_keys = {
          ["<Up>"] = { "", "i" },
          ["<Down>"] = { "", "i" },
          ["<Left>"] = { "", "i" },
          ["<Right>"] = { "", "i" },
          ["<Esc>"] = {"", "i"},
        },
      },
      config = function(_, opts)
        require("hardtime").setup(opts)
      end
  },

}
